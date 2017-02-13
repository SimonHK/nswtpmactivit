package com.nswt.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Model;

import java.io.UnsupportedEncodingException;

/**
 * Created by hongkai on 2017/1/31.
 */
public class ActDemo {

    public static void main(String[] args ) throws UnsupportedEncodingException {

        ActDemo ac = new ActDemo();
        ac.add();

    }

    ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

    public void add() throws UnsupportedEncodingException {

        RepositoryService repositoryService = processEngine.getRepositoryService();

        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode editNode = objectMapper.createObjectNode();
        editNode.put("id","hongkai01");
        editNode.put("resourceId","hongkai01s");

        ObjectNode stencilSetNode = objectMapper.createObjectNode();
        stencilSetNode.put("namespace","http://b3mn.org/stencilset/bpm2.0#");
        editNode.set("stencilset",stencilSetNode);

        ObjectNode modelObjectNode = objectMapper.createObjectNode();
        modelObjectNode.put("name","hongkai");
        modelObjectNode.put("revision","1");
        modelObjectNode.put("description","admin1");

        Model modelData = repositoryService.newModel();
        modelData.setCategory(null);
        modelData.setDeploymentId(null);
        modelData.setKey(null);
        modelData.setMetaInfo(modelObjectNode.toString());
        modelData.setName("流程名称001");
        modelData.setTenantId("");
        modelData.setVersion(1);

        repositoryService.saveModel(modelData);
        repositoryService.addModelEditorSource(modelData.getId(),editNode.toString().getBytes("utf-8"));

        System.out.println(modelData.getId());



    }
}

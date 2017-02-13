<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="bpmmodel/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="BPMMODEL_ID" id="BPMMODEL_ID" value="${pd.BPMMODEL_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注1:</td>
								<td><input type="text" name="ID_" id="ID_" value="${pd.ID_}" maxlength="64" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>
								<td><input type="number" name="REV_" id="REV_" value="${pd.REV_}" maxlength="32" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注3:</td>
								<td><input type="text" name="NAME_" id="NAME_" value="${pd.NAME_}" maxlength="255" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注4:</td>
								<td><input type="text" name="KEY_" id="KEY_" value="${pd.KEY_}" maxlength="255" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注5:</td>
								<td><input type="text" name="CATEGORY_" id="CATEGORY_" value="${pd.CATEGORY_}" maxlength="255" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注6:</td>
								<td><input type="text" name="CREATE_TIME_" id="CREATE_TIME_" value="${pd.CREATE_TIME_}" maxlength="23" placeholder="这里输入备注6" title="备注6" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注7:</td>
								<td><input type="text" name="LAST_UPDATE_TIME_" id="LAST_UPDATE_TIME_" value="${pd.LAST_UPDATE_TIME_}" maxlength="23" placeholder="这里输入备注7" title="备注7" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注8:</td>
								<td><input type="number" name="VERSION_" id="VERSION_" value="${pd.VERSION_}" maxlength="32" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注9:</td>
								<td><input type="text" name="META_INFO_" id="META_INFO_" value="${pd.META_INFO_}" maxlength="4000" placeholder="这里输入备注9" title="备注9" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注10:</td>
								<td><input type="text" name="DEPLOYMENT_ID_" id="DEPLOYMENT_ID_" value="${pd.DEPLOYMENT_ID_}" maxlength="64" placeholder="这里输入备注10" title="备注10" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注11:</td>
								<td><input type="text" name="EDITOR_SOURCE_VALUE_ID_" id="EDITOR_SOURCE_VALUE_ID_" value="${pd.EDITOR_SOURCE_VALUE_ID_}" maxlength="64" placeholder="这里输入备注11" title="备注11" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注12:</td>
								<td><input type="text" name="EDITOR_SOURCE_EXTRA_VALUE_ID_" id="EDITOR_SOURCE_EXTRA_VALUE_ID_" value="${pd.EDITOR_SOURCE_EXTRA_VALUE_ID_}" maxlength="64" placeholder="这里输入备注12" title="备注12" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注13:</td>
								<td><input type="text" name="TENANT_ID_" id="TENANT_ID_" value="${pd.TENANT_ID_}" maxlength="255" placeholder="这里输入备注13" title="备注13" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#ID_").val()==""){
				$("#ID_").tips({
					side:3,
		            msg:'请输入备注1',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ID_").focus();
			return false;
			}
			if($("#REV_").val()==""){
				$("#REV_").tips({
					side:3,
		            msg:'请输入备注2',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REV_").focus();
			return false;
			}
			if($("#NAME_").val()==""){
				$("#NAME_").tips({
					side:3,
		            msg:'请输入备注3',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NAME_").focus();
			return false;
			}
			if($("#KEY_").val()==""){
				$("#KEY_").tips({
					side:3,
		            msg:'请输入备注4',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#KEY_").focus();
			return false;
			}
			if($("#CATEGORY_").val()==""){
				$("#CATEGORY_").tips({
					side:3,
		            msg:'请输入备注5',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CATEGORY_").focus();
			return false;
			}
			if($("#CREATE_TIME_").val()==""){
				$("#CREATE_TIME_").tips({
					side:3,
		            msg:'请输入备注6',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CREATE_TIME_").focus();
			return false;
			}
			if($("#LAST_UPDATE_TIME_").val()==""){
				$("#LAST_UPDATE_TIME_").tips({
					side:3,
		            msg:'请输入备注7',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LAST_UPDATE_TIME_").focus();
			return false;
			}
			if($("#VERSION_").val()==""){
				$("#VERSION_").tips({
					side:3,
		            msg:'请输入备注8',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#VERSION_").focus();
			return false;
			}
			if($("#META_INFO_").val()==""){
				$("#META_INFO_").tips({
					side:3,
		            msg:'请输入备注9',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#META_INFO_").focus();
			return false;
			}
			if($("#DEPLOYMENT_ID_").val()==""){
				$("#DEPLOYMENT_ID_").tips({
					side:3,
		            msg:'请输入备注10',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DEPLOYMENT_ID_").focus();
			return false;
			}
			if($("#EDITOR_SOURCE_VALUE_ID_").val()==""){
				$("#EDITOR_SOURCE_VALUE_ID_").tips({
					side:3,
		            msg:'请输入备注11',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#EDITOR_SOURCE_VALUE_ID_").focus();
			return false;
			}
			if($("#EDITOR_SOURCE_EXTRA_VALUE_ID_").val()==""){
				$("#EDITOR_SOURCE_EXTRA_VALUE_ID_").tips({
					side:3,
		            msg:'请输入备注12',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#EDITOR_SOURCE_EXTRA_VALUE_ID_").focus();
			return false;
			}
			if($("#TENANT_ID_").val()==""){
				$("#TENANT_ID_").tips({
					side:3,
		            msg:'请输入备注13',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TENANT_ID_").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>
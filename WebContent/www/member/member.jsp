<%@ page contentType="text/html;charset=EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("���̵� �Է��� �ּ���.");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150");
	}

	function zipCheck() {
		url = "zipCheck.jsp?check=y";
		window
				.open(url, "ZipCodeSearch",
						"width=500,height=300,scrollbars=yes");
	}
</script>
</head>

<body bgcolor="black"  onLoad="regFrm.id.focus()">
	<div style="z-index: 1; background-image: URL(../images/member.png); background-position: 50% 50%;">
	<div style="z-index: 2;" align="center">
		<br /> <br /> <br />
		<form name="regFrm" method="post" action="memberProc.jsp">
			<table align="center" border="0" cellspacing="0" cellpadding="5" style="background-color: rgba(255, 255, 255, 0.5);">
				<tr>
					<td align="center" valign="middle">
						<table border="1" cellspacing="0" cellpadding="2" align="center"
							width="600">
							<tr align="center" style="background-color: rgba(252, 243, 140, 0.6);">
								<td colspan="3"><b>ȸ�� ����</b></td>
							</tr>
							<tr>
								<td width="20%">���̵�</td>
								<td width="50%">
								<input type="text" name="id" size="15" value="" style="background-color:transparent;">
								<input type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)" style="background-color:transparent;"></td>
								<td width="30%">���̵� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>�н�����</td>
								<td><input type="password" name="pass" size="15" value="" style="background-color:transparent;"></td>
								<td>�н����带 �����ּ���.</td>
							</tr>
							<tr>
								<td>�н����� Ȯ��</td>
								<td><input type="password" name="repass" size="15" value="" style="background-color:transparent;"></td>
								<td>�н����带 Ȯ���մϴ�.</td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="name" size="15" value="" style="background-color:transparent;">
								</td>
								<td>�̸��� �����ּ���.</td>
							</tr>
							<tr>
								<td>����</td>
								<td>
								��<input type="radio" name="sex" value="1" checked="checked" style="background-color:transparent;">
								��<input type="radio" name="sex" value="2" style="background-color:transparent;">
								</td>
								<td>������ ���� �ϼ���.</td>
							</tr>
							<tr>
								<td>�������</td>
								<td><input type="text" name="birthday" size="6" value="" style="background-color:transparent;">
									ex)830815</td>
								<td>������ϸ� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input type="text" name="email" size="30" value="" style="background-color:transparent;">
								</td>
								<td>�̸��ϸ� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>�����ȣ</td>
								<td>
								<input type="text" name="zipcode" size="7" style="background-color:transparent;">
								<input type="button" value="�����ȣã��" onClick="zipCheck()" style="background-color:transparent;">
								</td>
								<td>�����ȣ�� �˻��ϼ���.</td>
							</tr>
							<tr>
								<td>�ּ�</td>
								<td><input type="text" name="address" size="45" style="background-color:transparent;"></td>
								<td>�ּҸ� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>���</td>
								<td>���ͳ�<input type="checkbox" name="hobby" value="���ͳ�" style="background-color:transparent;">
									����<input type="checkbox" name="hobby" value="����" style="background-color:transparent;">
									����<input type="checkbox" name="hobby" value="����" style="background-color:transparent;">
									��ȭ<input type="checkbox" name="hobby" value="��ȭ" style="background-color:transparent;">
									�<input type="checkbox" name="hobby" value="�" style="background-color:transparent;">
								</td>
								<td>��̸� ���� �ϼ���.</td>
							</tr>
							<tr>
								<td>����</td>
								<td><select name=job style="background-color:transparent;">
										<option value="0">�����ϼ���.
										<option value="ȸ���">ȸ���
										<option value="����������">����������
										<option value="�����л�">�����л�
										<option value="�Ϲ��ڿ���">�Ϲ��ڿ���
										<option value="������">������
										<option value="�Ƿ���">�Ƿ���
										<option value="������">������
										<option value="����,���,������">����.���/������
										<option value="��,��,����,������">��/��/����/������
										<option value="�ֺ�">�ֺ�
										<option value="����">����
										<option value="��Ÿ">��Ÿ
								</select></td>
								<td>������ ���� �ϼ���.</td>
							</tr>
							<tr>
								<td colspan="3" align="center"><input type="button"
									value="ȸ������" onClick="inputCheck()"> &nbsp; &nbsp; <input
									type="reset" value="�ٽþ���"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<br /><br /><br /><br /><br /><br />
	</div>
</body>
</html>

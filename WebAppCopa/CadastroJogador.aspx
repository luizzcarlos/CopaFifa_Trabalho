<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="WebAppCopa.CadastroJogador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootbox.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>

    <script type="text/javascript">

        /* Quando usamos "parent" significa que queremos chamar 
        uma função contida na página pai, ou seja, funções contidas
        em ListarJogadores.aspx */

        function ChamarFecharPopUp() {
            parent.FecharPopUp();
        }

        function ChamarExibirMensagemErro(msg) {
            parent.ExibirMensagemErro(msg);
        }

        function ChamarExibirMensagemSucesso(msg) {
            parent.ExibirMensagemSucesso(msg);
            ChamarFecharPopUp();
        }

       

    </script>
</head>
<body>
    <form id="form1" runat="server" class="container">
    
        <div class="container">

            <!-- ID -->
            <div>
                <div>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                    ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtId" runat="server" Width="152px"></asp:TextBox>
                    </p>
                </div>

                <div style="margin-left: 120px">
                </div>
            </div>

            <div>
                <div>
                    <p>
                    Nome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNome" runat="server" Width="151px"></asp:TextBox>
                    </p>
                </div>               

                <div>
                </div>
            </div>
            <div>
                <div>
                    <p>
                    Data de Nascimento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtDataNascimento" runat="server" Width="151px"></asp:TextBox>
                    </p>
                </div>

                <div>
                </div>
            </div>
            <div>
                <div>
                    <p>
                    Numero Camisa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtNumeroCamisa" runat="server" Width="152px"></asp:TextBox>
                    </p>
                </div>

                <div>
                </div>
            </div>
            <div>
                <div>
                    <p>
                    Posição&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlPosicao" runat="server" Height="18px" Width="153px">
                        <asp:ListItem Selected="True">--Selecione--</asp:ListItem>
                    </asp:DropDownList>
                    </p>
                </div>

                <div>
                </div>
            </div>
            <div>
                <div>
                    <p>
                    Convocação&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtConvocacao" runat="server" Width="146px"></asp:TextBox>
                    </p>
                </div>

                <div style="margin-left: 200px">
                </div>
            </div>
            <div>
                <div>
                    <p>
                    Dispensa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtDispensa" runat="server" Width="144px"></asp:TextBox>
                    </p>
                </div>

                <div>
                </div>
            </div>
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="margin-left: 40px">
                <div>
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                </div>
            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar"
                cssclass="btn btn-info"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnExibirDados" runat="server" Text="Exibir Dados" OnClick="btnExibirDados_Click"  CssClass="btn btn-primary"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCalcularIdade" runat="server" Text="Calcular idade" OnClick="btnCalcularIdade_Click" CssClass="btn btn-success" />
                <br />
            </div>

            <br />

            <!-- Botões Exibir Dados e Calcular idade-->
            <br />
            <div>
                <div>
                    <br />
                    <br />
                </div>
            </div>

        </div>
    </form>
</body>
</html>

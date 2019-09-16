<%@ Page Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="ListarEstadios.aspx.cs"
       Inherits="WebAppCopa.ListarEstadios" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">

         
          //Fechar PopUp
        function FecharPopUp() {
            $("#frmModalUrl").attr("src", "about:blank");
            $("#frmModal").modal('hide');
            location.href = location.href

        }
     </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
        <div class="col-md-3">
            <button type="button" name="btnNovo" id="btnNovo" value="Novo"
                class="btn btn-primary from-control" onclick="ExibitCadastroEstadio();">
                <i class="glyphicon glyphicon-plus"></i>Novo
            </button>
            <br />
          
            <br />

        </div>
        <div class="col-md-9">
            <!--Conteúdo aqui-->
         </div>
    </div>

</asp:Content>
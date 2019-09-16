using Library.Business.Exceptions;
using Library.Models;
using Library.Models.Enuns;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCopa
{
    public partial class CadastroJogador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ddlPosicao.DataSource = Enum.GetValues(typeof(PosicaoEnum));
                ddlPosicao.DataBind();
            }
            
        }
        

        protected void btnExibirDados_Click(object sender, EventArgs e)
        {
            Jogador j = new Jogador();
            j.Id = Convert.ToInt32(txtId.Text);
            j.NmNome = txtNome.Text;
            j.DtNascimeto = Convert.ToDateTime(txtDataNascimento.Text);
            j.NrCamisa = Convert.ToInt32(txtNumeroCamisa.Text);
            

            j.Posicao = (PosicaoEnum)Enum.Parse(typeof(PosicaoEnum), ddlPosicao.SelectedValue);

            if (j.Posicao == PosicaoEnum.LateralDireito)
                j.NmPosicao = "Lateral Direito";
            else if (j.Posicao == PosicaoEnum.LateralEsquerdo)
                j.NmPosicao = "Lateral Esquerdo";
            else if (j.Posicao == PosicaoEnum.MeioCampo)
                j.NmNome = "Meio Campo";
            else
                j.NmPosicao = j.Posicao.ToString();

            j.DtConvocacao = Convert.ToDateTime(txtConvocacao.Text);
            j.DtDispensa = Convert.ToDateTime(txtDispensa.Text);

            lblMensagem.Text = j.ObterDados();            
        }

        protected void btnCalcularIdade_Click(object sender, EventArgs e)
        {
            Jogador j = new Jogador(Convert.ToDateTime(txtDataNascimento.Text));

            

            lblMensagem.Text = j.CalcularIdade().ToString();
            //lblMensagem.Text = j.CalcularIdade().ToString();

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
           
            try
            {
                if(string.IsNullOrEmpty(txtNome.Text))
                {
                    throw new NomeInvalidoException("O nome dece ser digitado.");

                }
               if(ddlPosicao.SelectedValue == "0")
                {
                    throw new PosicaoInvalidaException("Selecione a posição em que o jogador atua.");

                
                }

                Jogador j = new Jogador();
                j.Id = Convert.ToInt32(txtId.Text);
                j.NmNome = txtNome.Text;
                j.DtNascimeto = Convert.ToDateTime(txtDataNascimento.Text);
                j.NrCamisa = Convert.ToInt32(txtNumeroCamisa.Text);


                j.Posicao = (PosicaoEnum)Enum.Parse(typeof(PosicaoEnum), ddlPosicao.SelectedValue);

                if (j.Posicao == PosicaoEnum.LateralDireito)
                    j.NmPosicao = "Lateral Direito";
                else if (j.Posicao == PosicaoEnum.LateralEsquerdo)
                    j.NmPosicao = "Lateral Esquerdo";
                else if (j.Posicao == PosicaoEnum.MeioCampo)
                    j.NmNome = "Meio Campo";
                else
                    j.NmPosicao = j.Posicao.ToString();

                j.DtConvocacao = Convert.ToDateTime(txtConvocacao.Text);
                j.DtDispensa = Convert.ToDateTime(txtDispensa.Text);

                lblMensagem.Text = j.ObterDados();
                //TODos: SALVAMENTO DE BANCO DE DADOS SERA SALVO AQUI!!
                string scriptMensagem = string.Format("<script>ChamarExibirMensagemSucesso(`{0}`);</script>", j.ObterDados());

                ClientScript.RegisterStartupScript(this.GetType(), "CheveMensagem", scriptMensagem);

            }
            catch (NomeInvalidoException nEx)
            {
                string scriptMensagem = string.Format("<script>ChamarExibirMensagemErro(`{0}`);</script>", nEx.Message);

                ClientScript.RegisterStartupScript(this.GetType(), "ChaveMensagem", scriptMensagem);
            }
            catch(PosicaoInvalidaException posicaoEx)
            {
                lblMensagem.Text = posicaoEx.Message;
                lblMensagem.ForeColor = System.Drawing.Color.Red;

            }
            catch(Exception ex)
            {
                lblMensagem.Text = ex.Message;
                lblMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

}
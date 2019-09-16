using Library.Models.Enuns;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library.Models
{
    public class Jogador
    {
        private int id;
        private string nmNome;
        private DateTime dtNascimeto;
        private int nrCamisa;
        private string nmPosicao;
        private PosicaoEnum posicao;
        private DateTime dtConvocacao;
        private DateTime dtDispensa;
        

       
        public int Id { get => id; set => id = value; }
        public string NmNome { get => nmNome; set => nmNome = value; }
        public DateTime DtNascimeto { get => dtNascimeto; set => dtNascimeto = value; }
        public int NrCamisa { get => nrCamisa; set => nrCamisa = value; }
        public DateTime DtConvocacao { get => dtConvocacao; set => dtConvocacao = value; }
        public DateTime DtDispensa { get => dtDispensa; set => dtDispensa = value; }
        public string NmPosicao { get => nmPosicao; set => nmPosicao = value; }
        public PosicaoEnum Posicao { get => posicao; set => posicao = value; }


        public string ObterDados()
        {
            string mensagemFormatada = string.Format("Nome: {0}<br>  Nº: {1}<br>  Posição: {2}", NmNome, NrCamisa , nmPosicao);
            return mensagemFormatada;

            //return string.Format("Nome: {0}  Nº: {1}  Posição: {2}", nmNome, nrCamisa, nmPosição);
        }

        public int CalcularIdade()
        {
            return DateTime.Now.Subtract(DtNascimeto).Days / 365; 
        }

        public Decimal CalcularIndenizacaoFifa()
        {
            return 0;
        }
        public Jogador()
        {

        }
        public Jogador(DateTime _dataNacimento) 
            //DateTime _dtaConvocacao , DateTime _dataDispensa)
        {
            this.dtNascimeto = _dataNacimento;
            //this.dtConvocacao = _dtaConvocacao;
            //this.dtDispensa = _dataDispensa;
        }
    }
}

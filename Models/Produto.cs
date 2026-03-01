using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SoftLineProject.Models 
{
    public class Produto 
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Codigo { get; set; }

        [Required, MaxLength(60)]
        public string Descricao { get; set; }

        [MaxLength(14)]
        public string CodigoBarras { get; set; }

        public decimal ValorVenda { get; set; }

        public decimal PesoBruto { get; set; }

        public decimal PesoLiquido { get; set; }
    }
}
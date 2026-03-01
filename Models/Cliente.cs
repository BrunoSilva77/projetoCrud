using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SoftLineProject.Models
{
    public class Cliente
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Codigo { get; set; }

        [Required, MaxLength(60)]
        public string Nome { get; set; }

        [MaxLength(100)]
        public string Fantasia { get; set; }

        public string Documento { get; set; }

        public string Endereco { get; set; }
    }
}
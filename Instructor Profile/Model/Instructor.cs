namespace Instructor_Profile.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Instructor
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [Required]
        [StringLength(50)]
        public string password { get; set; }

        [StringLength(50)]
        public string cv { get; set; }

        [StringLength(50)]
        public string photo { get; set; }

        public int? age { get; set; }

        public int? dept_Id { get; set; }

        public virtual Department Department { get; set; }
    }
}

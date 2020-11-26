namespace Instructor_Profile.Model
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class InstructorDBContext : DbContext
    {
        public InstructorDBContext()
            : base("name=InstructorDBContext")
        {
        }

        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Instructor> Instructors { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Department>()
                .Property(e => e.Dept_Name)
                .IsUnicode(false);

            modelBuilder.Entity<Department>()
                .Property(e => e.Dept_Location)
                .IsUnicode(false);

            modelBuilder.Entity<Instructor>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<Instructor>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<Instructor>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<Instructor>()
                .Property(e => e.cv)
                .IsUnicode(false);

            modelBuilder.Entity<Instructor>()
                .Property(e => e.photo)
                .IsUnicode(false);
        }
    }
}

using Microsoft.EntityFrameworkCore.Migrations;

namespace Final_Project_1.Migrations
{
    public partial class InitialMigrations : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Payments",
                columns: table => new
                {
                    PaymentDetailId = table.Column<int>(type: "INTEGER", nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    CardOwnerName = table.Column<string>(type: "TEXT", nullable: true),
                    CardNumber = table.Column<string>(type: "TEXT", nullable: true),
                    ExpirationDate = table.Column<string>(type: "TEXT", nullable: true),
                    SecurityCode = table.Column<string>(type: "TEXT", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Payments", x => x.PaymentDetailId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Payments");
        }
    }
}

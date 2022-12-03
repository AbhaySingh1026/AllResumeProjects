using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AIRLINE_.WEBAPP.Migrations
{
    public partial class AddedApprovedColumn : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Approved",
                table: "AspNetUsers",
                type: "char(5)",
                nullable: false,
                defaultValue: "False");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Approved",
                table: "AspNetUsers");
        }
    }
}

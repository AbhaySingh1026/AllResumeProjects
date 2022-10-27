using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CONNECT_API_TO_DB_.EF.Migrations
{
    public partial class uniqueKey : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_Books_Name",
                table: "Books",
                column: "Name",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Books_Name",
                table: "Books");
        }
    }
}

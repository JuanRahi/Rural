using Microsoft.EntityFrameworkCore.Migrations;

namespace Rural.Database.Migrations
{
    public partial class Prices : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Type",
                table: "Deals",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<double>(
                name: "Performance",
                table: "DealItems",
                nullable: true);

            migrationBuilder.AddColumn<double>(
                name: "TotalPriceAfterTax",
                table: "DealItems",
                nullable: false,
                defaultValue: 0.0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Type",
                table: "Deals");

            migrationBuilder.DropColumn(
                name: "Performance",
                table: "DealItems");

            migrationBuilder.DropColumn(
                name: "TotalPriceAfterTax",
                table: "DealItems");
        }
    }
}

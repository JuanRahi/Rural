using Microsoft.EntityFrameworkCore.Migrations;

namespace Rural.Database.Migrations
{
    public partial class DealIdBovines : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DealItemId",
                table: "BovineDeals",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_BovineDeals_DealItemId",
                table: "BovineDeals",
                column: "DealItemId");

            migrationBuilder.AddForeignKey(
                name: "FK_BovineDeals_DealItems_DealItemId",
                table: "BovineDeals",
                column: "DealItemId",
                principalTable: "DealItems",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BovineDeals_DealItems_DealItemId",
                table: "BovineDeals");

            migrationBuilder.DropIndex(
                name: "IX_BovineDeals_DealItemId",
                table: "BovineDeals");

            migrationBuilder.DropColumn(
                name: "DealItemId",
                table: "BovineDeals");
        }
    }
}

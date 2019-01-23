using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Rural.Database.Migrations
{
    public partial class ImportData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Breed",
                table: "Bovines",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Cross",
                table: "Bovines",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "EntryDate",
                table: "Bovines",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "LocationId",
                table: "Bovines",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Locations",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Number = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Locations", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Bovines_LocationId",
                table: "Bovines",
                column: "LocationId");

            migrationBuilder.AddForeignKey(
                name: "FK_Bovines_Locations_LocationId",
                table: "Bovines",
                column: "LocationId",
                principalTable: "Locations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Bovines_Locations_LocationId",
                table: "Bovines");

            migrationBuilder.DropTable(
                name: "Locations");

            migrationBuilder.DropIndex(
                name: "IX_Bovines_LocationId",
                table: "Bovines");

            migrationBuilder.DropColumn(
                name: "Breed",
                table: "Bovines");

            migrationBuilder.DropColumn(
                name: "Cross",
                table: "Bovines");

            migrationBuilder.DropColumn(
                name: "EntryDate",
                table: "Bovines");

            migrationBuilder.DropColumn(
                name: "LocationId",
                table: "Bovines");
        }
    }
}

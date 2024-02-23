using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class BookingStatus : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PlayerStat_Sport_SportId",
                table: "PlayerStat");

            migrationBuilder.AlterColumn<string>(
                name: "Type",
                table: "Sport",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "Name",
                table: "Sport",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "ModifiedBy",
                table: "Sport",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "CreatedBy",
                table: "Sport",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "ModifiedBy",
                table: "PlayerStat",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "CreatedBy",
                table: "PlayerStat",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<Guid>(
                name: "PlayerId1",
                table: "PlayerStat",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "BookingStatus",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookingStatus", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_PlayerStat_PlayerId1",
                table: "PlayerStat",
                column: "PlayerId1");

            migrationBuilder.AddForeignKey(
                name: "FK_PlayerStat_Player_PlayerId1",
                table: "PlayerStat",
                column: "PlayerId1",
                principalTable: "Player",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_PlayerStat_Sport_SportId",
                table: "PlayerStat",
                column: "SportId",
                principalTable: "Sport",
                principalColumn: "Id");

            migrationBuilder.InsertData(
                table: "BookingStatus",
                columns: new[] { "Id", "Name", "CreatedDate", "CreatedBy", "ModifiedDate", "ModifiedBy", "IsDeleted" },
                values: new object[,]
                {
                    { Guid.NewGuid(), "Scheduled Pending Payment", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Confirmed", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Pending Result", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Validating Result", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Completed", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Completed Invalid Result", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Completed No Result", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Cancelled", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Refunded", DateTime.UtcNow, "System", DateTime.UtcNow, "System", false}
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PlayerStat_Player_PlayerId1",
                table: "PlayerStat");

            migrationBuilder.DropForeignKey(
                name: "FK_PlayerStat_Sport_SportId",
                table: "PlayerStat");

            migrationBuilder.DropTable(
                name: "BookingStatus");

            migrationBuilder.DropIndex(
                name: "IX_PlayerStat_PlayerId1",
                table: "PlayerStat");

            migrationBuilder.DropColumn(
                name: "PlayerId1",
                table: "PlayerStat");

            migrationBuilder.AlterColumn<string>(
                name: "Type",
                table: "Sport",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "Name",
                table: "Sport",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "ModifiedBy",
                table: "Sport",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "CreatedBy",
                table: "Sport",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "ModifiedBy",
                table: "PlayerStat",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "CreatedBy",
                table: "PlayerStat",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AddForeignKey(
                name: "FK_PlayerStat_Sport_SportId",
                table: "PlayerStat",
                column: "SportId",
                principalTable: "Sport",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}

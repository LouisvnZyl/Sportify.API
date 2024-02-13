using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class PlayerStatSport : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Player_User_UserId",
                table: "Player");

            migrationBuilder.CreateTable(
                name: "Sport",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Type = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sport", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PlayerStat",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    PlayerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SportId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    MatchCount = table.Column<int>(type: "int", nullable: false),
                    WinCount = table.Column<int>(type: "int", nullable: false),
                    LossCount = table.Column<int>(type: "int", nullable: false),
                    DrawCount = table.Column<int>(type: "int", nullable: false),
                    PlayerRating = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PlayerStat", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PlayerStat_Player_PlayerId",
                        column: x => x.PlayerId,
                        principalTable: "Player",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_PlayerStat_Sport_SportId",
                        column: x => x.SportId,
                        principalTable: "Sport",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_PlayerStat_PlayerId",
                table: "PlayerStat",
                column: "PlayerId");

            migrationBuilder.CreateIndex(
                name: "IX_PlayerStat_SportId",
                table: "PlayerStat",
                column: "SportId");

            migrationBuilder.AddForeignKey(
                name: "FK_Player_User_UserId",
                table: "Player",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id");

            migrationBuilder.InsertData(
                table: "Sport",
                columns: new[] { "Id", "Name", "Type", "CreatedDate", "CreatedBy", "ModifiedDate", "ModifiedBy", "IsDeleted" },
                values: new object[,]
                {
                    { Guid.NewGuid(), "Padel", "Racket",  DateTime.UtcNow, "System", DateTime.UtcNow, "System", false},
                    { Guid.NewGuid(), "Table Tennis", "Racket",  DateTime.UtcNow, "System", DateTime.UtcNow, "System", true},
                    { Guid.NewGuid(), "Badminton", "Racket",  DateTime.UtcNow, "System", DateTime.UtcNow, "System", true},
                    { Guid.NewGuid(), "Squash", "Racket",  DateTime.UtcNow, "System", DateTime.UtcNow, "System", true},
                    { Guid.NewGuid(), "Racquetball", "Racket",  DateTime.UtcNow, "System", DateTime.UtcNow, "System", true}
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Player_User_UserId",
                table: "Player");

            migrationBuilder.DropTable(
                name: "PlayerStat");

            migrationBuilder.DropTable(
                name: "Sport");

            migrationBuilder.AddForeignKey(
                name: "FK_Player_User_UserId",
                table: "Player",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}

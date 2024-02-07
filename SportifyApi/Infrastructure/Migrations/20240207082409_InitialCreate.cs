using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BookingResult",
                columns: table => new
                {
                    BookingResultId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BookingResult = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingResultCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingResultCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingResultModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingResultModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingResultIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookingResult", x => x.BookingResultId);
                });

            migrationBuilder.CreateTable(
                name: "BookingStatus",
                columns: table => new
                {
                    BookingStatusId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BookingStatus = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingStatusCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingStatusCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingStatusModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingStatusModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingStatusIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookingStatus", x => x.BookingStatusId);
                });

            migrationBuilder.CreateTable(
                name: "NotificationType",
                columns: table => new
                {
                    NotificationTypeId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NotificationType = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationTypeCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    NotificationTypeCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationTypeModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    NotificationTypeModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationTypeIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NotificationType", x => x.NotificationTypeId);
                });

            migrationBuilder.CreateTable(
                name: "PaymentStatus",
                columns: table => new
                {
                    PaymentStatusId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PaymentStatus = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PaymentStatusCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PaymentStatusCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PaymentStatusModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PaymentStatusModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PaymentStatusIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PaymentStatus", x => x.PaymentStatusId);
                });

            migrationBuilder.CreateTable(
                name: "Sport",
                columns: table => new
                {
                    SportId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SportName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    SportType = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    SportCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    SportCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    SportModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    SportModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    SportIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sport", x => x.SportId);
                });

            migrationBuilder.CreateTable(
                name: "User",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_User", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "VenueImage",
                columns: table => new
                {
                    VenueImageId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    VenueImageUrl = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueImageCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    VenueImageCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueImageModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    VenueImageModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueImageIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VenueImage", x => x.VenueImageId);
                });

            migrationBuilder.CreateTable(
                name: "Booking",
                columns: table => new
                {
                    BookingId = table.Column<int>(type: "int", nullable: false),
                    PlayerId = table.Column<int>(type: "int", nullable: false),
                    VenueId = table.Column<int>(type: "int", nullable: false),
                    BookingStatusId = table.Column<int>(type: "int", nullable: false),
                    BookingResultId = table.Column<int>(type: "int", nullable: false),
                    BookingTeam = table.Column<string>(type: "varchar(1)", unicode: false, maxLength: 1, nullable: true),
                    BookingDate = table.Column<DateTime>(type: "date", nullable: false),
                    BookingTime = table.Column<TimeSpan>(type: "time", nullable: false),
                    BookingDuration = table.Column<short>(type: "smallint", nullable: false),
                    BookingCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    BookingModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    BookingIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Booking", x => x.BookingId);
                    table.ForeignKey(
                        name: "FK_Booking_BookingResult",
                        column: x => x.BookingResultId,
                        principalTable: "BookingResult",
                        principalColumn: "BookingResultId");
                    table.ForeignKey(
                        name: "FK_Booking_BookingStatus",
                        column: x => x.BookingStatusId,
                        principalTable: "BookingStatus",
                        principalColumn: "BookingStatusId");
                });

            migrationBuilder.CreateTable(
                name: "Notification",
                columns: table => new
                {
                    NotificationId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NotificationTypeId = table.Column<int>(type: "int", nullable: false),
                    PlayerId = table.Column<int>(type: "int", nullable: false),
                    NotificationMessage = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    NotificationCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    NotificationCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    NotificationModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    NotificationIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Notification", x => x.NotificationId);
                    table.ForeignKey(
                        name: "FK_Notification_NotificationType",
                        column: x => x.NotificationTypeId,
                        principalTable: "NotificationType",
                        principalColumn: "NotificationTypeId");
                });

            migrationBuilder.CreateTable(
                name: "Payment",
                columns: table => new
                {
                    PaymentId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BookingId = table.Column<int>(type: "int", nullable: false),
                    PlayerId = table.Column<int>(type: "int", nullable: false),
                    PaymentStatusId = table.Column<int>(type: "int", nullable: false),
                    PaymentTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PaymentAmount = table.Column<decimal>(type: "decimal(18,2)", precision: 18, scale: 2, nullable: false),
                    PaymentCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PaymentCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PaymentModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PaymentModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PaymentIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Payment", x => x.PaymentId);
                    table.ForeignKey(
                        name: "FK_Payment_Booking",
                        column: x => x.BookingId,
                        principalTable: "Booking",
                        principalColumn: "BookingId");
                    table.ForeignKey(
                        name: "FK_Payment_PaymentStatus",
                        column: x => x.PaymentStatusId,
                        principalTable: "PaymentStatus",
                        principalColumn: "PaymentStatusId");
                });

            migrationBuilder.CreateTable(
                name: "Player",
                columns: table => new
                {
                    PlayerId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PreferenceId = table.Column<int>(type: "int", nullable: true),
                    PlayerFirstName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerLastName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerEmailAddress = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerPhoneNumber = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    PlayerDateOfBirth = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    PlayerProfilePictureUrl = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    PlayerIsPremium = table.Column<bool>(type: "bit", nullable: false),
                    PlayerCreationTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PlayerCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PlayerCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PlayerModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Player", x => x.PlayerId);
                });

            migrationBuilder.CreateTable(
                name: "PlayerStat",
                columns: table => new
                {
                    PlayerId = table.Column<int>(type: "int", nullable: false),
                    PlayerStatId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SportId = table.Column<int>(type: "int", nullable: false),
                    PlayerStatMatchCount = table.Column<short>(type: "smallint", nullable: false),
                    PlayerStatWinCount = table.Column<short>(type: "smallint", nullable: false),
                    PlayerStatLossCount = table.Column<short>(type: "smallint", nullable: false),
                    PlayerStatDrawCount = table.Column<short>(type: "smallint", nullable: false),
                    PlayerStatRating = table.Column<decimal>(type: "decimal(18,2)", precision: 18, scale: 2, nullable: false),
                    PlayerStatCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PlayerStatCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerStatModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PlayerStatModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PlayerStatIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PlayerStat", x => x.PlayerId);
                    table.ForeignKey(
                        name: "FK_PlayerStat_Player",
                        column: x => x.PlayerId,
                        principalTable: "Player",
                        principalColumn: "PlayerId");
                    table.ForeignKey(
                        name: "FK_PlayerStat_Sport",
                        column: x => x.SportId,
                        principalTable: "Sport",
                        principalColumn: "SportId");
                });

            migrationBuilder.CreateTable(
                name: "Review",
                columns: table => new
                {
                    ReviewId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PlayerId = table.Column<int>(type: "int", nullable: false),
                    ReviewRating = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    ReviewComment = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    ReviewTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    ReviewCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    ReviewCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    ReviewModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    ReviewModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    ReviewIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Review", x => x.ReviewId);
                    table.ForeignKey(
                        name: "FK_Review_Player",
                        column: x => x.PlayerId,
                        principalTable: "Player",
                        principalColumn: "PlayerId");
                });

            migrationBuilder.CreateTable(
                name: "Venue",
                columns: table => new
                {
                    VenueId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    VenueImageId = table.Column<int>(type: "int", nullable: true),
                    SportId = table.Column<int>(type: "int", nullable: false),
                    ReviewId = table.Column<int>(type: "int", nullable: true),
                    VenueName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueLocation = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    VenueCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    VenueModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    VenueIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Venue", x => x.VenueId);
                    table.ForeignKey(
                        name: "FK_Venue_Review",
                        column: x => x.ReviewId,
                        principalTable: "Review",
                        principalColumn: "ReviewId");
                    table.ForeignKey(
                        name: "FK_Venue_Sport",
                        column: x => x.SportId,
                        principalTable: "Sport",
                        principalColumn: "SportId");
                    table.ForeignKey(
                        name: "FK_Venue_VenueImage",
                        column: x => x.VenueImageId,
                        principalTable: "VenueImage",
                        principalColumn: "VenueImageId");
                });

            migrationBuilder.CreateTable(
                name: "Preference",
                columns: table => new
                {
                    PreferenceId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SportId = table.Column<int>(type: "int", nullable: true),
                    VenueId = table.Column<int>(type: "int", nullable: true),
                    PreferenceCreatedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PreferenceCreatedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PreferenceModifiedTimestamp = table.Column<DateTime>(type: "datetime", nullable: false),
                    PreferenceModifiedBy = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    PreferenceIsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Preference", x => x.PreferenceId);
                    table.ForeignKey(
                        name: "FK_Preference_Sport",
                        column: x => x.SportId,
                        principalTable: "Sport",
                        principalColumn: "SportId");
                    table.ForeignKey(
                        name: "FK_Preference_Venue",
                        column: x => x.VenueId,
                        principalTable: "Venue",
                        principalColumn: "VenueId");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Booking_BookingResultId",
                table: "Booking",
                column: "BookingResultId");

            migrationBuilder.CreateIndex(
                name: "IX_Booking_BookingStatusId",
                table: "Booking",
                column: "BookingStatusId");

            migrationBuilder.CreateIndex(
                name: "IX_Booking_PlayerId",
                table: "Booking",
                column: "PlayerId");

            migrationBuilder.CreateIndex(
                name: "IX_Booking_VenueId",
                table: "Booking",
                column: "VenueId");

            migrationBuilder.CreateIndex(
                name: "IX_Notification_NotificationTypeId",
                table: "Notification",
                column: "NotificationTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_Notification_PlayerId",
                table: "Notification",
                column: "PlayerId");

            migrationBuilder.CreateIndex(
                name: "IX_Payment_BookingId",
                table: "Payment",
                column: "BookingId");

            migrationBuilder.CreateIndex(
                name: "IX_Payment_PaymentStatusId",
                table: "Payment",
                column: "PaymentStatusId");

            migrationBuilder.CreateIndex(
                name: "IX_Payment_PlayerId",
                table: "Payment",
                column: "PlayerId");

            migrationBuilder.CreateIndex(
                name: "IX_Player_PreferenceId",
                table: "Player",
                column: "PreferenceId");

            migrationBuilder.CreateIndex(
                name: "IX_PlayerStat_SportId",
                table: "PlayerStat",
                column: "SportId");

            migrationBuilder.CreateIndex(
                name: "IX_Preference_SportId",
                table: "Preference",
                column: "SportId");

            migrationBuilder.CreateIndex(
                name: "IX_Preference_VenueId",
                table: "Preference",
                column: "VenueId");

            migrationBuilder.CreateIndex(
                name: "IX_Review_PlayerId",
                table: "Review",
                column: "PlayerId");

            migrationBuilder.CreateIndex(
                name: "IX_Venue_ReviewId",
                table: "Venue",
                column: "ReviewId");

            migrationBuilder.CreateIndex(
                name: "IX_Venue_SportId",
                table: "Venue",
                column: "SportId");

            migrationBuilder.CreateIndex(
                name: "IX_Venue_VenueImageId",
                table: "Venue",
                column: "VenueImageId");

            migrationBuilder.AddForeignKey(
                name: "FK_Booking_Player",
                table: "Booking",
                column: "PlayerId",
                principalTable: "Player",
                principalColumn: "PlayerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Booking_Venue",
                table: "Booking",
                column: "VenueId",
                principalTable: "Venue",
                principalColumn: "VenueId");

            migrationBuilder.AddForeignKey(
                name: "FK_Notification_Player",
                table: "Notification",
                column: "PlayerId",
                principalTable: "Player",
                principalColumn: "PlayerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Payment_Player",
                table: "Payment",
                column: "PlayerId",
                principalTable: "Player",
                principalColumn: "PlayerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Player_Preference",
                table: "Player",
                column: "PreferenceId",
                principalTable: "Preference",
                principalColumn: "PreferenceId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Review_Player",
                table: "Review");

            migrationBuilder.DropTable(
                name: "Notification");

            migrationBuilder.DropTable(
                name: "Payment");

            migrationBuilder.DropTable(
                name: "PlayerStat");

            migrationBuilder.DropTable(
                name: "User");

            migrationBuilder.DropTable(
                name: "NotificationType");

            migrationBuilder.DropTable(
                name: "Booking");

            migrationBuilder.DropTable(
                name: "PaymentStatus");

            migrationBuilder.DropTable(
                name: "BookingResult");

            migrationBuilder.DropTable(
                name: "BookingStatus");

            migrationBuilder.DropTable(
                name: "Player");

            migrationBuilder.DropTable(
                name: "Preference");

            migrationBuilder.DropTable(
                name: "Venue");

            migrationBuilder.DropTable(
                name: "Review");

            migrationBuilder.DropTable(
                name: "Sport");

            migrationBuilder.DropTable(
                name: "VenueImage");
        }
    }
}

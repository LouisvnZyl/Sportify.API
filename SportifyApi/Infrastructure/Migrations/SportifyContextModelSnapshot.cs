﻿// <auto-generated />
using System;
using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Infrastructure.Migrations
{
    [DbContext(typeof(SportifyContext))]
    partial class SportifyContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Domain.Entities.Booking", b =>
                {
                    b.Property<int>("BookingId")
                        .HasColumnType("int");

                    b.Property<string>("BookingCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("BookingDate")
                        .HasColumnType("date");

                    b.Property<short>("BookingDuration")
                        .HasColumnType("smallint");

                    b.Property<bool>("BookingIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("BookingModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int>("BookingResultId")
                        .HasColumnType("int");

                    b.Property<int>("BookingStatusId")
                        .HasColumnType("int");

                    b.Property<string>("BookingTeam")
                        .HasMaxLength(1)
                        .IsUnicode(false)
                        .HasColumnType("varchar(1)");

                    b.Property<TimeSpan>("BookingTime")
                        .HasColumnType("time");

                    b.Property<int>("PlayerId")
                        .HasColumnType("int");

                    b.Property<int>("VenueId")
                        .HasColumnType("int");

                    b.HasKey("BookingId");

                    b.HasIndex("BookingResultId");

                    b.HasIndex("BookingStatusId");

                    b.HasIndex("PlayerId");

                    b.HasIndex("VenueId");

                    b.ToTable("Booking", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.BookingResult", b =>
                {
                    b.Property<int>("BookingResultId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("BookingResultId"));

                    b.Property<string>("BookingResult1")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)")
                        .HasColumnName("BookingResult");

                    b.Property<string>("BookingResultCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingResultCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("BookingResultIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("BookingResultModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingResultModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.HasKey("BookingResultId");

                    b.ToTable("BookingResult", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.BookingStatus", b =>
                {
                    b.Property<int>("BookingStatusId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("BookingStatusId"));

                    b.Property<string>("BookingStatus1")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)")
                        .HasColumnName("BookingStatus");

                    b.Property<string>("BookingStatusCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingStatusCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("BookingStatusIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("BookingStatusModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("BookingStatusModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.HasKey("BookingStatusId");

                    b.ToTable("BookingStatus", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Notification", b =>
                {
                    b.Property<int>("NotificationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("NotificationId"));

                    b.Property<string>("NotificationCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("NotificationCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("NotificationIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("NotificationMessage")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("NotificationModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("NotificationModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("NotificationTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int>("NotificationTypeId")
                        .HasColumnType("int");

                    b.Property<int>("PlayerId")
                        .HasColumnType("int");

                    b.HasKey("NotificationId");

                    b.HasIndex("NotificationTypeId");

                    b.HasIndex("PlayerId");

                    b.ToTable("Notification", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.NotificationType", b =>
                {
                    b.Property<int>("NotificationTypeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("NotificationTypeId"));

                    b.Property<string>("NotificationType1")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)")
                        .HasColumnName("NotificationType");

                    b.Property<string>("NotificationTypeCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("NotificationTypeCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("NotificationTypeIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("NotificationTypeModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("NotificationTypeModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.HasKey("NotificationTypeId");

                    b.ToTable("NotificationType", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Payment", b =>
                {
                    b.Property<int>("PaymentId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PaymentId"));

                    b.Property<int>("BookingId")
                        .HasColumnType("int");

                    b.Property<decimal>("PaymentAmount")
                        .HasPrecision(18, 2)
                        .HasColumnType("decimal");

                    b.Property<string>("PaymentCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PaymentCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("PaymentIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("PaymentModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PaymentModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int>("PaymentStatusId")
                        .HasColumnType("int");

                    b.Property<DateTime>("PaymentTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int>("PlayerId")
                        .HasColumnType("int");

                    b.HasKey("PaymentId");

                    b.HasIndex("BookingId");

                    b.HasIndex("PaymentStatusId");

                    b.HasIndex("PlayerId");

                    b.ToTable("Payment", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.PaymentStatus", b =>
                {
                    b.Property<int>("PaymentStatusId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PaymentStatusId"));

                    b.Property<string>("PaymentStatus1")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)")
                        .HasColumnName("PaymentStatus");

                    b.Property<string>("PaymentStatusCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PaymentStatusCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("PaymentStatusIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("PaymentStatusModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PaymentStatusModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.HasKey("PaymentStatusId");

                    b.ToTable("PaymentStatus", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Player", b =>
                {
                    b.Property<int>("PlayerId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PlayerId"));

                    b.Property<string>("PlayerCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PlayerCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("PlayerCreationTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("PlayerDateOfBirth")
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("PlayerEmailAddress")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("PlayerFirstName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<bool>("PlayerIsDeleted")
                        .HasColumnType("bit");

                    b.Property<bool>("PlayerIsPremium")
                        .HasColumnType("bit");

                    b.Property<string>("PlayerLastName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("PlayerModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PlayerModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("PlayerPhoneNumber")
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("PlayerProfilePictureUrl")
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<int?>("PreferenceId")
                        .HasColumnType("int");

                    b.HasKey("PlayerId");

                    b.HasIndex("PreferenceId");

                    b.ToTable("Player", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.PlayerStat", b =>
                {
                    b.Property<int>("PlayerId")
                        .HasColumnType("int");

                    b.Property<string>("PlayerStatCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PlayerStatCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<short>("PlayerStatDrawCount")
                        .HasColumnType("smallint");

                    b.Property<int>("PlayerStatId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PlayerStatId"));

                    b.Property<bool>("PlayerStatIsDeleted")
                        .HasColumnType("bit");

                    b.Property<short>("PlayerStatLossCount")
                        .HasColumnType("smallint");

                    b.Property<short>("PlayerStatMatchCount")
                        .HasColumnType("smallint");

                    b.Property<string>("PlayerStatModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PlayerStatModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<decimal>("PlayerStatRating")
                        .HasPrecision(18, 2)
                        .HasColumnType("decimal");

                    b.Property<short>("PlayerStatWinCount")
                        .HasColumnType("smallint");

                    b.Property<int>("SportId")
                        .HasColumnType("int");

                    b.HasKey("PlayerId");

                    b.HasIndex("SportId");

                    b.ToTable("PlayerStat", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Preference", b =>
                {
                    b.Property<int>("PreferenceId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PreferenceId"));

                    b.Property<string>("PreferenceCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PreferenceCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("PreferenceIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("PreferenceModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("PreferenceModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int?>("SportId")
                        .HasColumnType("int");

                    b.Property<int?>("VenueId")
                        .HasColumnType("int");

                    b.HasKey("PreferenceId");

                    b.HasIndex("SportId");

                    b.HasIndex("VenueId");

                    b.ToTable("Preference", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Review", b =>
                {
                    b.Property<int>("ReviewId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ReviewId"));

                    b.Property<int>("PlayerId")
                        .HasColumnType("int");

                    b.Property<string>("ReviewComment")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("ReviewCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("ReviewCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("ReviewIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("ReviewModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("ReviewModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("ReviewRating")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("ReviewTimestamp")
                        .HasColumnType("datetime");

                    b.HasKey("ReviewId");

                    b.HasIndex("PlayerId");

                    b.ToTable("Review", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Sport", b =>
                {
                    b.Property<int>("SportId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("SportId"));

                    b.Property<string>("SportCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("SportCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("SportIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("SportModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("SportModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("SportName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("SportType")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.HasKey("SportId");

                    b.ToTable("Sport", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.User", b =>
                {
                    b.Property<Guid>("Id")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("User", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Venue", b =>
                {
                    b.Property<int>("VenueId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("VenueId"));

                    b.Property<int?>("ReviewId")
                        .HasColumnType("int");

                    b.Property<int>("SportId")
                        .HasColumnType("int");

                    b.Property<string>("VenueCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("VenueCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<int?>("VenueImageId")
                        .HasColumnType("int");

                    b.Property<bool>("VenueIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("VenueLocation")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<string>("VenueModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("VenueModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("VenueName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.HasKey("VenueId");

                    b.HasIndex("ReviewId");

                    b.HasIndex("SportId");

                    b.HasIndex("VenueImageId");

                    b.ToTable("Venue", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.VenueImage", b =>
                {
                    b.Property<int>("VenueImageId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("VenueImageId"));

                    b.Property<string>("VenueImageCreatedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("VenueImageCreatedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<bool>("VenueImageIsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("VenueImageModifiedBy")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.Property<DateTime>("VenueImageModifiedTimestamp")
                        .HasColumnType("datetime");

                    b.Property<string>("VenueImageUrl")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false)
                        .HasColumnType("varchar(50)");

                    b.HasKey("VenueImageId");

                    b.ToTable("VenueImage", (string)null);
                });

            modelBuilder.Entity("Domain.Entities.Booking", b =>
                {
                    b.HasOne("Domain.Entities.BookingResult", "BookingResult")
                        .WithMany("Bookings")
                        .HasForeignKey("BookingResultId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Booking_BookingResult");

                    b.HasOne("Domain.Entities.BookingStatus", "BookingStatus")
                        .WithMany("Bookings")
                        .HasForeignKey("BookingStatusId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Booking_BookingStatus");

                    b.HasOne("Domain.Entities.Player", "Player")
                        .WithMany("Bookings")
                        .HasForeignKey("PlayerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Booking_Player");

                    b.HasOne("Domain.Entities.Venue", "Venue")
                        .WithMany("Bookings")
                        .HasForeignKey("VenueId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Booking_Venue");

                    b.Navigation("BookingResult");

                    b.Navigation("BookingStatus");

                    b.Navigation("Player");

                    b.Navigation("Venue");
                });

            modelBuilder.Entity("Domain.Entities.Notification", b =>
                {
                    b.HasOne("Domain.Entities.NotificationType", "NotificationType")
                        .WithMany("Notifications")
                        .HasForeignKey("NotificationTypeId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Notification_NotificationType");

                    b.HasOne("Domain.Entities.Player", "Player")
                        .WithMany("Notifications")
                        .HasForeignKey("PlayerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Notification_Player");

                    b.Navigation("NotificationType");

                    b.Navigation("Player");
                });

            modelBuilder.Entity("Domain.Entities.Payment", b =>
                {
                    b.HasOne("Domain.Entities.Booking", "Booking")
                        .WithMany("Payments")
                        .HasForeignKey("BookingId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Payment_Booking");

                    b.HasOne("Domain.Entities.PaymentStatus", "PaymentStatus")
                        .WithMany("Payments")
                        .HasForeignKey("PaymentStatusId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Payment_PaymentStatus");

                    b.HasOne("Domain.Entities.Player", "Player")
                        .WithMany("Payments")
                        .HasForeignKey("PlayerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Payment_Player");

                    b.Navigation("Booking");

                    b.Navigation("PaymentStatus");

                    b.Navigation("Player");
                });

            modelBuilder.Entity("Domain.Entities.Player", b =>
                {
                    b.HasOne("Domain.Entities.Preference", "Preference")
                        .WithMany("Players")
                        .HasForeignKey("PreferenceId")
                        .HasConstraintName("FK_Player_Preference");

                    b.Navigation("Preference");
                });

            modelBuilder.Entity("Domain.Entities.PlayerStat", b =>
                {
                    b.HasOne("Domain.Entities.Player", "Player")
                        .WithOne("PlayerStat")
                        .HasForeignKey("Domain.Entities.PlayerStat", "PlayerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_PlayerStat_Player");

                    b.HasOne("Domain.Entities.Sport", "Sport")
                        .WithMany("PlayerStats")
                        .HasForeignKey("SportId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_PlayerStat_Sport");

                    b.Navigation("Player");

                    b.Navigation("Sport");
                });

            modelBuilder.Entity("Domain.Entities.Preference", b =>
                {
                    b.HasOne("Domain.Entities.Sport", "Sport")
                        .WithMany("Preferences")
                        .HasForeignKey("SportId")
                        .HasConstraintName("FK_Preference_Sport");

                    b.HasOne("Domain.Entities.Venue", "Venue")
                        .WithMany("Preferences")
                        .HasForeignKey("VenueId")
                        .HasConstraintName("FK_Preference_Venue");

                    b.Navigation("Sport");

                    b.Navigation("Venue");
                });

            modelBuilder.Entity("Domain.Entities.Review", b =>
                {
                    b.HasOne("Domain.Entities.Player", "Player")
                        .WithMany("Reviews")
                        .HasForeignKey("PlayerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Review_Player");

                    b.Navigation("Player");
                });

            modelBuilder.Entity("Domain.Entities.Venue", b =>
                {
                    b.HasOne("Domain.Entities.Review", "Review")
                        .WithMany("Venues")
                        .HasForeignKey("ReviewId")
                        .HasConstraintName("FK_Venue_Review");

                    b.HasOne("Domain.Entities.Sport", "Sport")
                        .WithMany("Venues")
                        .HasForeignKey("SportId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired()
                        .HasConstraintName("FK_Venue_Sport");

                    b.HasOne("Domain.Entities.VenueImage", "VenueImage")
                        .WithMany("Venues")
                        .HasForeignKey("VenueImageId")
                        .HasConstraintName("FK_Venue_VenueImage");

                    b.Navigation("Review");

                    b.Navigation("Sport");

                    b.Navigation("VenueImage");
                });

            modelBuilder.Entity("Domain.Entities.Booking", b =>
                {
                    b.Navigation("Payments");
                });

            modelBuilder.Entity("Domain.Entities.BookingResult", b =>
                {
                    b.Navigation("Bookings");
                });

            modelBuilder.Entity("Domain.Entities.BookingStatus", b =>
                {
                    b.Navigation("Bookings");
                });

            modelBuilder.Entity("Domain.Entities.NotificationType", b =>
                {
                    b.Navigation("Notifications");
                });

            modelBuilder.Entity("Domain.Entities.PaymentStatus", b =>
                {
                    b.Navigation("Payments");
                });

            modelBuilder.Entity("Domain.Entities.Player", b =>
                {
                    b.Navigation("Bookings");

                    b.Navigation("Notifications");

                    b.Navigation("Payments");

                    b.Navigation("PlayerStat");

                    b.Navigation("Reviews");
                });

            modelBuilder.Entity("Domain.Entities.Preference", b =>
                {
                    b.Navigation("Players");
                });

            modelBuilder.Entity("Domain.Entities.Review", b =>
                {
                    b.Navigation("Venues");
                });

            modelBuilder.Entity("Domain.Entities.Sport", b =>
                {
                    b.Navigation("PlayerStats");

                    b.Navigation("Preferences");

                    b.Navigation("Venues");
                });

            modelBuilder.Entity("Domain.Entities.Venue", b =>
                {
                    b.Navigation("Bookings");

                    b.Navigation("Preferences");
                });

            modelBuilder.Entity("Domain.Entities.VenueImage", b =>
                {
                    b.Navigation("Venues");
                });
#pragma warning restore 612, 618
        }
    }
}

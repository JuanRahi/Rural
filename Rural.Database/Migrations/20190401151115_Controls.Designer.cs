﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Rural.Database.DA;

namespace Rural.Database.Migrations
{
    [DbContext(typeof(RuralDatabaseContext))]
    [Migration("20190401151115_Controls")]
    partial class Controls
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.1-servicing-10028")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Rural.Database.Model.Bovine", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Age");

                    b.Property<int?>("Breed");

                    b.Property<int>("Category");

                    b.Property<int?>("Cross");

                    b.Property<DateTime>("EntryDate");

                    b.Property<int?>("LocationId");

                    b.Property<string>("Number");

                    b.Property<int?>("OwnerId");

                    b.Property<int>("Sex");

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasIndex("LocationId");

                    b.HasIndex("OwnerId");

                    b.ToTable("Bovines");
                });

            modelBuilder.Entity("Rural.Database.Model.BovineControl", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("BovineId");

                    b.Property<int>("ControlId");

                    b.HasKey("Id");

                    b.HasIndex("BovineId");

                    b.HasIndex("ControlId");

                    b.ToTable("BovineControls");
                });

            modelBuilder.Entity("Rural.Database.Model.BovineDeal", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("BovineId");

                    b.Property<int>("DealId");

                    b.HasKey("Id");

                    b.HasIndex("BovineId");

                    b.HasIndex("DealId");

                    b.ToTable("BovineDeals");
                });

            modelBuilder.Entity("Rural.Database.Model.Control", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ControlType");

                    b.Property<DateTime>("Date");

                    b.Property<string>("Description");

                    b.Property<int?>("PaddockId");

                    b.HasKey("Id");

                    b.HasIndex("PaddockId");

                    b.ToTable("Controls");
                });

            modelBuilder.Entity("Rural.Database.Model.Deal", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("BuyerId");

                    b.Property<DateTime>("Date");

                    b.Property<int?>("SellerId");

                    b.HasKey("Id");

                    b.HasIndex("BuyerId");

                    b.HasIndex("SellerId");

                    b.ToTable("Deals");
                });

            modelBuilder.Entity("Rural.Database.Model.DealItem", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Category");

                    b.Property<int>("Count");

                    b.Property<int?>("DealId");

                    b.Property<double?>("KgPrice");

                    b.Property<double?>("Kgs");

                    b.Property<double>("TotalPrice");

                    b.HasKey("Id");

                    b.HasIndex("DealId");

                    b.ToTable("DealItems");
                });

            modelBuilder.Entity("Rural.Database.Model.Location", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name");

                    b.Property<string>("Number");

                    b.HasKey("Id");

                    b.ToTable("Locations");
                });

            modelBuilder.Entity("Rural.Database.Model.Owner", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name");

                    b.Property<string>("Number");

                    b.HasKey("Id");

                    b.ToTable("Owners");
                });

            modelBuilder.Entity("Rural.Database.Model.Paddock", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Paddocks");
                });

            modelBuilder.Entity("Rural.Database.Model.Bovine", b =>
                {
                    b.HasOne("Rural.Database.Model.Location", "Location")
                        .WithMany()
                        .HasForeignKey("LocationId");

                    b.HasOne("Rural.Database.Model.Owner", "Owner")
                        .WithMany()
                        .HasForeignKey("OwnerId");
                });

            modelBuilder.Entity("Rural.Database.Model.BovineControl", b =>
                {
                    b.HasOne("Rural.Database.Model.Bovine", "Bovine")
                        .WithMany()
                        .HasForeignKey("BovineId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Rural.Database.Model.Control", "Control")
                        .WithMany("Bovines")
                        .HasForeignKey("ControlId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Rural.Database.Model.BovineDeal", b =>
                {
                    b.HasOne("Rural.Database.Model.Bovine", "Bovine")
                        .WithMany("Deals")
                        .HasForeignKey("BovineId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Rural.Database.Model.Deal", "Deal")
                        .WithMany("Bovines")
                        .HasForeignKey("DealId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Rural.Database.Model.Control", b =>
                {
                    b.HasOne("Rural.Database.Model.Paddock", "Paddock")
                        .WithMany()
                        .HasForeignKey("PaddockId");
                });

            modelBuilder.Entity("Rural.Database.Model.Deal", b =>
                {
                    b.HasOne("Rural.Database.Model.Owner", "Buyer")
                        .WithMany()
                        .HasForeignKey("BuyerId");

                    b.HasOne("Rural.Database.Model.Owner", "Seller")
                        .WithMany()
                        .HasForeignKey("SellerId");
                });

            modelBuilder.Entity("Rural.Database.Model.DealItem", b =>
                {
                    b.HasOne("Rural.Database.Model.Deal", "Deal")
                        .WithMany("Items")
                        .HasForeignKey("DealId");
                });
#pragma warning restore 612, 618
        }
    }
}
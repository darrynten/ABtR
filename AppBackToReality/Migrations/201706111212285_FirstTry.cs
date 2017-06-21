namespace AppBackToReality.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FirstTry : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CartItems",
                c => new
                    {
                        ItemId = c.String(nullable: false, maxLength: 128),
                        CartId = c.String(),
                        DateCreated = c.DateTime(nullable: false),
                        ScreenId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ItemId)
                .ForeignKey("dbo.Screens", t => t.ScreenId, cascadeDelete: true)
                .Index(t => t.ScreenId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CartItems", "ScreenId", "dbo.Screens");
            DropIndex("dbo.CartItems", new[] { "ScreenId" });
            DropTable("dbo.CartItems");
        }
    }
}

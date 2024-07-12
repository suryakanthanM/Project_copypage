page 50707 WorkOrderLinePage
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    // AutoSplitKey = true;
    // DelayedInsert = true;
    // MultipleNewLines = true;
    LinksAllowed = true;
    InsertAllowed = true;
    Editable = true;
    DeleteAllowed = true;
    CardPageId = "Item Model Card";


    SourceTable = "Item Model SubLine";

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                field("Work order No."; Rec."Work order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work order No. field.', Comment = '%';
                    visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';




                }
                field("Task No."; Rec."Task No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ToolTip = 'Specifies the value of the Start Date field.', Comment = '%';
                    DrillDownPageId = PlainningPage;

                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                    DrillDownPageId = PlainningPage;



                }

                field("Work Order Budget"; Rec."Work Order Budget")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Budget field.', Comment = '%';
                }
            }


        }

    }

}
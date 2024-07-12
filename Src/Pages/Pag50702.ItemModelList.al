page 50702 "Item Model List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Item Models Main";
    CardPageId = "Item Model Card";
    Editable = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Model)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Work Order Start Date"; Rec."Work Order Start Date")
                {
                    ApplicationArea = All;
                }
                field("Work Order End Date "; Rec."Work Order End Date")
                {
                    ApplicationArea = All;
                }
            }

        }
    }


}
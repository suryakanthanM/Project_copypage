page 50709 PlainningPage
{
    // AutoSplitKey = true;
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    DataCaptionExpression = Rec."Task No.";
    SourceTable = PlanningLine;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    Visible = false;

                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    visible = false;
                }
                field("Task No."; Rec."Task No.")
                {
                    ApplicationArea = All;
                }

                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
                field("Planning Date"; Rec."Planning Date")
                {
                    //Importance = Promoted;
                    ToolTip = 'Specifies the value of the Planning Date field.', Comment = '%';

                }
                field("End Date"; Rec."End Date")
                {
                    //Importance = Promoted;
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ApplicationArea = All;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}

pageextension 50756 MyExtension extends "Job Planning Lines"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}

tableextension 50758 MyExtension extends "Job task"
{
    fields
    {
        // Add changes to table fields here
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}
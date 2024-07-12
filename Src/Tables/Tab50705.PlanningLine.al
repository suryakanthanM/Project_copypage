table 50705 PlanningLine
{
    DataClassification = CustomerContent;
    LookupPageId = PlainningPage;
    DrillDownPageId = PlainningPage;


    fields
    {
        field(1; "Work Order No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            

        }
        field(3; "Task No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50711; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50712; "Planning Date"; Date)
        {

            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = min("PlanningLine"."Planning Date" where("Line No." = field("Line No.")));


            // trigger OnValidate()
            // var
            //     Subline: Record "Item Model SubLine";
            // begin
            //     if Subline.Get(Rec."Planning Date") then begin
            //         Subline."Start Date":=Rec."Planning Date";
            //     end;
            // end;

        }
        field(50713; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = max("PlanningLine"."Planning Date" where("Line No." = field("Line No.")));
        }
        field(55; "Total Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(56; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(57; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "Line No.", "Task No.")
        {
            Clustered = true;
        }
    }
 


}
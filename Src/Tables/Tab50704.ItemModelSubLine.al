table 50704 "Item Model SubLine"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = PlainningPage;
    LookupPageId = PlainningPage;

    fields
    {
        field(1; "Work order No."; Code[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

            AutoIncrement=true;


        }
        field(3; "Task No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50707; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50708; "Start Date"; Date)
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = min("PlanningLine"."Planning Date" where("Task No." = field("Task No.")));

            Editable = false;
        }
        field(50709; "End Date"; Date)
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;

            CalcFormula = max("PlanningLine"."End Date" where("Task No." = field("Task No.")));
            Editable = false;

        }
        field(50710; "Work Order Budget"; Decimal)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(Key1; "Work Order No.", "Line No.", "Task No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeries: Codeunit "No. Series";
        sales_setup: Record "Sales & Receivables Setup";

    begin
        if Rec."Task No." = '' then begin
            sales_setup.Get();
            sales_setup.TestField("Line_No.");
            Rec."Task No." := NoSeries.GetNextNo(sales_setup."Line_No.", Today);

        end;

    end;




}


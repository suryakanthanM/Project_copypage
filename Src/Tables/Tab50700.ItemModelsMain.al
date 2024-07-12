table 50700 "Item Models Main"
{
    DataClassification = ToBeClassified;
    //Caption='Workorder';

    fields
    {
        field(1; "No."; Code[50])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                NoSeries: Codeunit "No. Series";
                sales_setup: Record "Sales & Receivables Setup";

            begin
                if Rec."No." = '' then begin
                    sales_setup.Get();
                    sales_setup.TestField("Work No.");
                    Rec."No." := NoSeries.GetNextNo(sales_setup."Work No.", Today);

                end;

            end;


        }
        field(2; "Customer No."; Code[50])
        {
            DataClassification = ToBeClassified;

            //TableRelation = Customer;

        }
        field(50700; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50701; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50702; "Work Order Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50703; "Work Order End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50704; Adderss; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50716; Status; Option)
        {
            OptionMembers = " ",Open,Process,Completed;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    var
        NoSeries: Codeunit "No. Series";
        sales_setup: Record "Sales & Receivables Setup";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeInsert(Rec, IsHandled);
        if IsHandled then
            exit;

        if Rec."No." = '' then begin
            sales_setup.Get();
            sales_setup.TestField("Work No.");
            Rec."No." := NoSeries.GetNextNo(sales_setup."Work No.", Today);

        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInsert(var "Vehicle details": Record "Item Models Main"; var IsHandled: Boolean)
    begin
    end;

}
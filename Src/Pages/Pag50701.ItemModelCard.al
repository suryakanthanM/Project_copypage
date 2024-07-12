page 50701 "Item Model Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    // AutoSplitKey=true;
    RefreshOnActivate = true;
    InsertAllowed = true;
    Editable = true;
    DeleteAllowed = true;
    SourceTable = "Item Models Main";

    layout
    {
        area(Content)
        {
            group(General)
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
                    TableRelation = Customer;
                    trigger OnValidate()
                    var
                        Cust: Record Customer;
                    //ItemModel: Record "Item Models Main";
                    begin
                        if Cust.Get(Rec."Customer No.") then begin
                            Rec."Customer Name" := Cust.Name;
                            Rec.Adderss := Cust.Address;
                        end;

                    end;

                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field(Adderss; Rec.Adderss)
                {
                    ApplicationArea = All;
                }
                field("Work Order Start Date"; Rec."Work Order Start Date")
                {
                    Importance = promoted;
                    ApplicationArea = All;
                }
                field("Work Order End Date"; Rec."Work Order End Date")
                {
                    Importance = promoted;
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
            part(WorkOrderLinePage; WorkOrderLinePage)
            {

                ApplicationArea = All;
                SubPageLink = "Work Order No." = field("No.");
            }



        }
    }

}
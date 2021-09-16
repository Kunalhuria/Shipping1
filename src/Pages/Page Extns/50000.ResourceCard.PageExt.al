pageextension 50000 "ResourceCard" extends "Resource Card"
{
    layout
    {
        addafter(General)
        {
            group(Shipping)
            {
                field("NAME OF SHIP"; rec."NAME OF SHIP")
                {
                    ApplicationArea = All;

                }
                field("TYPE OF VESSEL"; rec."TYPE OF VESSEL")
                {
                    ApplicationArea = All;

                }
                field("FLAG (Country)"; rec."FLAG (Country)")
                {
                    ApplicationArea = All;

                }
                field("IMO NO."; rec."IMO NO.")
                {
                    ApplicationArea = All;

                }
                field("YEAR BUILT"; rec."YEAR BUILT")
                {
                    ApplicationArea = All;

                }
                field("CLASSIFICATION SOCIETY"; rec."CLASSIFICATION SOCIETY")
                {
                    ApplicationArea = All;

                }
                field("P & I CLUB"; rec."P & I CLUB")
                {
                    ApplicationArea = All;

                }
                field("NET TONNAGE"; rec."NET TONNAGE")
                {
                    ApplicationArea = All;

                }
                field("GROSS TONNAGE "; rec."GROSS TONNAGE ")
                {
                    ApplicationArea = All;

                }
                field("DEAD WEIGHT"; rec."DEAD WEIGHT")
                {
                    ApplicationArea = All;

                }
                field("SUMMER DRAUGHT"; rec."SUMMER DRAUGHT")
                {
                    ApplicationArea = All;

                }
                field(LOA; rec.LOA)
                {
                    ApplicationArea = All;

                }
                field(LBP; rec.LBP)
                {
                    ApplicationArea = All;

                }
                field("CARGO GEAR"; rec."CARGO GEAR")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.1 DIMENSION"; rec."HOLD NO.1 DIMENSION")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.2 DIMENSION"; rec."HOLD NO.2 DIMENSION")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.3 DIMENSION"; rec."HOLD NO.3 DIMENSION")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.4 DIMENSION"; rec."HOLD NO.4 DIMENSION")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.5 DIMENSION"; rec."HOLD NO.5 DIMENSION")
                {
                    ApplicationArea = All;

                }
                field("HOLD NO.6 DIMENSION"; rec."HOLD NO.6 DIMENSION")
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(processing)
        {
            action("Attach Customers")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = Attach;
                RunObject = page "Resource Customer Catalog";
                RunPageLink = "Resource No." = field("No.");

                trigger OnAction()
                begin

                end;
            }
            // action("Ship Availability")
            // {
            //     ApplicationArea = All;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     PromotedOnly = true;
            //     Image = ItemAvailability;
            //     RunObject = page "Ship Availability";
            //     RunPageLink = "Resource No." = field("No.");

            //     trigger OnAction()
            //     begin

            //     end;
            // }
        }
    }

    var
        myInt: Integer;
}
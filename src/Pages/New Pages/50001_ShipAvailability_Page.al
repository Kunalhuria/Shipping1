// page 50001 "Ship Availability"
// {
//     PageType = StandardDialog;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = "Ship Availability";

//     layout
//     {
//         area(Content)
//         {
//             group("Ship Availability")
//             {
//                 field("Resource No."; Rec."Resource No.")
//                 {
//                     ApplicationArea = All;
//                     trigger OnValidate()
//                     var
//                         Resource_Rec: Record Resource;
//                     begin
//                         if Resource_Rec.Get(Rec."Resource No.") then
//                             Rec."Ship Name" := Resource_Rec.Name;
//                     end;
//                 }
//                 field("Ship Name"; Rec."Ship Name")
//                 {
//                     ApplicationArea = All;
//                     Editable = false;
//                 }
//                 field("From Date"; Rec."From Date")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("To Date"; Rec."To Date")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("From Region"; Rec."From Region")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("To Region"; Rec."To Region")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }
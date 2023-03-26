table 50100 Employee
{
    Caption = 'employee table';
    Description = 'this is the description of the employee table';

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(6; gender; Option)
        {
            OptionMembers = F,M,T,Nonbinairy,"Do not want to mention";
            DataClassification = ToBeClassified;
        }
        field(3; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "date of joining"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "city"; Option)
        {
            OptionMembers = Tunis,Sfax,Mahdia,Mednin;
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        //this is the primary key, you can add more than 1
        key(Key1; "emp code")
        {
            //there are two types of indexing one is cluster and the other is non cluster
            //the index cluster is based on the physical order of the table
            Clustered = true;
        }
        //here you can add the secondary keys
        //clusters can be used only once
        key(Secky; city)
        {

        }
    }

    var
        value1: Integer;
        value2: Integer;


    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');

    end;

    trigger OnDelete()
    begin
        Message('Data deleted');

    end;

    trigger OnRename()
    begin
        Message('Data renamed');

    end;

}
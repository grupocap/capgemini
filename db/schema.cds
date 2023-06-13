namespace Capgeminis;


type dec    : Decimal(16, 2);

type adress : {
    Street     : String;
    City       : String;
    state      : String;
    PostalCode : String;
    Country    : String;
};

entity Products {
    key ID              : UUID;
        Name            : String not null;
        Description     : String;
        Imageurl        : String;
        ReleaseDate     : DateTime default $now;
        DiscontinueDate : DateTime;
        Price           : dec;
        Height          : type of Price;
        width           : Decimal(16, 2);
        Depth           : Decimal(16, 2);
        Quantity        : Decimal(16, 2);

};

entity Supliers {
    key ID     : UUID;
        Name   : type of Products : Name;
        adress : adress;
        email  : String;
        Phone  : String;
        Fax    : String;
};

entity Categories {
    key ID   : String(1);
        Name : String;
};

entity StockAbailabilit {
    key ID   : Integer;
        name : String;
};

entity Currencies {
    key ID          : String(3);
        Description : String;

};

entity UnitOfMeansures {
    key ID          : String(2);
        Description : String;
};

entity Dimensions {
    key ID          : String(2);
        Description : String;
};

entity Months {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(3);
};

entity ProductsReview {
    key none    : String;
        Rating  : Integer;
        Comment : String;
};

entity SalesData {
    key DeliveryDate : DateTime;
        Revenue      : Decimal(16, 2);
};

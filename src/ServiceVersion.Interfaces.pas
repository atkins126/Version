unit ServiceVersion.Interfaces;

interface

type
  iVersion = interface
    ['{CB5ED8E8-C53D-4232-970F-70ABCAD14797}']
    { private }
    function getValue: string;
    function getBuild: integer;
    function getMaintenance: integer;
    function getMajor: integer;
    function getMinor: integer;
    procedure setValue(const Value: string);
    procedure setBuild(const Value: integer);
    procedure setMaintenance(const Value: integer);
    procedure setMajor(const Value: integer);
    procedure setMinor(const Value: integer);
    function getFilename: string;
    procedure setFilename(const aValue: string);
    { public }
    property Filename: string read getFilename write setFilename;           // Formato da Vers�o ex: 2.4.3.7 separado em array [0]=2, [1]=4, [2]=3, [3]=7
    property Major: integer read getMajor write setMajor;                   // [0]=2  Vers�o principal       = Mudan�a do programa   ( Reengenharia                   )
    property Minor: integer read getMinor write setMinor;                   // [1]=4  Vers�o menor           = Mudan�a de Formul�rio ( Adi��o/Remo��o                 )
    property Maintenance: integer read getMaintenance write setMaintenance; // [2]=3  Lan�amento/Atualiza��o = Mudan�a de Componente ( Adi��o/Remo��o                 )
    property Build: integer read getBuild write setBuild;                   // [3]=7  Constru��o             = Corre��o              ( Adequa��es das funcionalidades )
    property Value: string read getValue;
  end;

implementation

end.

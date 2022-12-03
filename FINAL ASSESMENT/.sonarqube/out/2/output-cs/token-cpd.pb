ÄG
ëE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPI\Controllers\AirlinesController.cs
	namespace 	
AIRLINE_
 
. 
WEBAPI 
. 
Controllers %
{		 
[

 
Route

 

(


 
$str

 &
)

& '
]

' (
[ 
ApiController 
] 
public 

class 
AirlinesController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
AirlineDbContext )
_context* 2
;2 3
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AirlinesController !
(! "
AirlineDbContext" 2
context3 :
,: ;
IMapper< C
mapperD J
)J K
{ 	
_context 
= 
context 
; 
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
AirlineApiModel3 B
>B C
>C D
>D E
ShowAllAirlinesF U
(U V
)V W
{ 	
if 
( 
_context 
. 
Airlines !
==" $
null% )
)) *
{ 
return 
NotFound 
(  
$str  6
)6 7
;7 8
} 
return 
await 
_context !
.! "
Airlines" *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
[   	
HttpPost  	 
]   
public!! 
async!! 
Task!! 
<!! 
IActionResult!! '
>!!' (
AddOneAirline!!) 6
(!!6 7
AirlineViewModel!!7 G
airline!!H O
)!!O P
{"" 	
if## 
(## 
airline## 
==## 
null## 
)##  
{$$ 
return%% 

BadRequest%% !
(%%! "
$str%%" @
)%%@ A
;%%A B
}&& 
if'' 
('' 
_context'' 
.'' 
Airlines'' !
==''" $
null''% )
)'') *
{(( 
return)) 
NotFound)) 
())  
$str))  6
)))6 7
;))7 8
}** 
var,, 
convertedAirline,,  
=,,! "
_mapper,,# *
.,,* +
Map,,+ .
<,,. /
AirlineApiModel,,/ >
>,,> ?
(,,? @
airline,,@ G
),,G H
;,,H I
var.. 
x.. 
=.. 
_context.. 
... 
Airlines.. %
...% &
Add..& )
(..) *
convertedAirline..* :
)..: ;
;..; <
await// 
_context// 
.// 
SaveChangesAsync// +
(//+ ,
)//, -
;//- .
return00 
Ok00 
(00 
$str00 *
)00* +
;00+ ,
}11 	
[33 	
HttpPut33	 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
UpdateOneAirline44) 9
(449 :
int44: =
	airlineId44> G
,44G H
AirlineViewModel44I Y
airline44Z a
)44a b
{55 	
if66 
(66 
airline66 
==66 
null66 
)66  
{77 
return88 

BadRequest88 !
(88! "
$str88" @
)88@ A
;88A B
}99 
if:: 
(:: 
_context:: 
.:: 
Airlines:: !
==::" $
null::% )
)::) *
{;; 
return<< 
NotFound<< 
(<<  
$str<<  6
)<<6 7
;<<7 8
}== 
var>> 
airlineToUpdate>> 
=>>  !
await>>" '
_context>>( 0
.>>0 1
Airlines>>1 9
.>>9 :
	FindAsync>>: C
(>>C D
	airlineId>>D M
)>>M N
;>>N O
if?? 
(?? 
airlineToUpdate?? 
==??  "
null??# '
)??' (
{@@ 
returnAA 
NotFoundAA 
(AA  
$strAA  J
)AAJ K
;AAK L
}BB 
airlineToUpdateCC 
.CC 
NameCC  
=CC! "
airlineCC# *
.CC* +
NameCC+ /
;CC/ 0
airlineToUpdateDD 
.DD 
FromCityDD $
=DD% &
airlineDD' .
.DD. /
FromCityDD/ 7
;DD7 8
airlineToUpdateEE 
.EE 
ToCityEE "
=EE# $
airlineEE% ,
.EE, -
ToCityEE- 3
;EE3 4
airlineToUpdateFF 
.FF 
FareFF  
=FF! "
airlineFF# *
.FF* +
FareFF+ /
;FF/ 0
_contextHH 
.HH 
AirlinesHH 
.HH 
UpdateHH $
(HH$ %
airlineToUpdateHH% 4
)HH4 5
;HH5 6
awaitII 
_contextII 
.II 
SaveChangesAsyncII +
(II+ ,
)II, -
;II- .
returnJJ 
OkJJ 
(JJ 
$strJJ ,
)JJ, -
;JJ- .
}KK 	
[MM 	

HttpDeleteMM	 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (
DeleteOneAirlineNN) 9
(NN9 :
intNN: =
	airlineIdNN> G
)NNG H
{OO 	
ifPP 
(PP 
_contextPP 
.PP 
AirlinesPP !
==PP" $
nullPP% )
)PP) *
{QQ 
returnRR 
NotFoundRR 
(RR  
$strRR  6
)RR6 7
;RR7 8
}SS 
varTT 
airlineToDeleteTT 
=TT  !
awaitTT" '
_contextTT( 0
.TT0 1
AirlinesTT1 9
.TT9 :
	FindAsyncTT: C
(TTC D
	airlineIdTTD M
)TTM N
;TTN O
ifUU 
(UU 
airlineToDeleteUU 
==UU  "
nullUU# '
)UU' (
{VV 
returnWW 
NotFoundWW 
(WW  
$strWW  L
)WWL M
;WWM N
}XX 
_contextYY 
.YY 
AirlinesYY 
.YY 
RemoveYY $
(YY$ %
airlineToDeleteYY% 4
)YY4 5
;YY5 6
awaitZZ 
_contextZZ 
.ZZ 
SaveChangesAsyncZZ +
(ZZ+ ,
)ZZ, -
;ZZ- .
return[[ 
Ok[[ 
([[ 
$str[[ ,
)[[, -
;[[- .
}\\ 	
[^^ 	
HttpPost^^	 
]^^ 
public__ 
async__ 
Task__ 
<__ 
IActionResult__ '
>__' ((
CheckAirlineNameAvailability__) E
(__E F
string__F L
airlineName__M X
)__X Y
{`` 	
ifaa 
(aa 
stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
airlineNameaa% 0
)aa0 1
)aa1 2
returnaa3 9

BadRequestaa: D
(aaD E
$straaE Z
)aaZ [
;aa[ \
elsebb 
{cc 
ifdd 
(dd 
_contextdd 
.dd 
Airlinesdd $
!=dd% '
nulldd( ,
)dd, -
{ee 
varff "
recordWithRecievedNameff .
=ff/ 0
awaitff1 6
_contextff7 ?
.ff? @
Airlinesff@ H
.ffH I
WhereffI N
(ffN O
airlineffO V
=>ffW Y
airlineffZ a
.ffa b
Nameffb f
==ffg i
airlineNameffj u
)ffu v
.ffv w 
FirstOrDefaultAsync	ffw ä
(
ffä ã
)
ffã å
;
ffå ç
ifgg 
(gg "
recordWithRecievedNamegg .
==gg/ 1
nullgg2 6
)gg6 7
{hh 
returnii 
Okii !
(ii! "
$numii" #
)ii# $
;ii$ %
}jj 
elsekk 
{ll 
returnmm 
Okmm !
(mm! "
$nummm" #
)mm# $
;mm$ %
}nn 
}oo 
elsepp 
{qq 
returnrr 
NotFoundrr #
(rr# $
$strrr$ :
)rr: ;
;rr; <
}ss 
}tt 
}uu 	
}vv 
}ww ä
ëE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPI\MappingProfiles\MappingProfile.cs
	namespace 	
AIRLINE_
 
. 
WEBAPI 
. 
MappingProfiles )
{ 
public 

class 
MappingProfile 
:  !
Profile" )
{		 
public

 
MappingProfile

 
(

 
)

 
{ 	
	CreateMap 
< 
AirlineApiModel %
,% &
AirlineViewModel' 7
>7 8
(8 9
)9 :
.: ;

ReverseMap; E
(E F
)F G
;G H
} 	
} 
} ‰
zE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPI\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddDbContext 
< 
AirlineDbContext .
>. /
(/ 0
options0 7
=>8 :
options		 
.		 
UseSqlServer		 
(		 
builder		  
.		  !
Configuration		! .
.		. /
GetConnectionString		/ B
(		B C
$str		C \
)		\ ]
??		^ `
throw

 	
new


 %
InvalidOperationException

 '
(

' (
$str

( `
)

` a
)

a b
)

b c
;

c d
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
MappingProfile& 4
)4 5
)5 6
;6 7
builder 
. 
Services 
. 
AddCors 
( 
options  
=>! #
{ 
options 
. 
AddDefaultPolicy 
( 
builder $
=>% '
{ 
builder 
. 
WithOrigins 
( 
$str 4
)4 5
.5 6
AllowAnyHeader6 D
(D E
)E F
.F G
AllowAnyMethodG U
(U V
)V W
;W X
} 
) 
; 
} 
) 
; 
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{   
app!! 
.!! 

UseSwagger!! 
(!! 
)!! 
;!! 
app"" 
."" 
UseSwaggerUI"" 
("" 
)"" 
;"" 
}## 
app%% 
.%% 
UseHttpsRedirection%% 
(%% 
)%% 
;%% 
app'' 
.'' 
UseAuthorization'' 
('' 
)'' 
;'' 
app)) 
.)) 
UseCors)) 
()) 
))) 
;)) 
app++ 
.++ 
MapControllers++ 
(++ 
)++ 
;++ 
app-- 
.-- 
Run-- 
(-- 
)-- 	
;--	 
ì
éE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPI\ViewModels\AirlineViewModel.cs
	namespace 	
AIRLINE_
 
. 
WEBAPI 
. 

ViewModels $
{ 
public 

class 
AirlineViewModel !
{ 
public		 
string		 
?		 
Name		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
?

 
FromCity

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
? 
ToCity 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Fare 
{ 
get 
; 
set "
;" #
}$ %
} 
} 
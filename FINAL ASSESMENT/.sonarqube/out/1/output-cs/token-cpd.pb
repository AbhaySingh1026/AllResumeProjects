≤
óE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Areas\Identity\Data\AirlineDbContext.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Areas 
.  
Identity  (
.( )
Data) -
;- .
public		 
class		 
AirlineDbContext		 
:		 
IdentityDbContext		  1
<		1 2
ApplicationUser		2 A
>		A B
{

 
public 

AirlineDbContext 
( 
DbContextOptions ,
<, -
AirlineDbContext- =
>= >
options? F
)F G
: 	
base
 
( 
options 
) 
{ 
} 
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
builder9 @
)@ A
{ 
base 
. 
OnModelCreating 
( 
builder $
)$ %
;% &
builder 
. 
Entity 
< 
ApplicationUser &
>& '
(' (
entity( .
=>/ 1
{ 	
entity 
. 
Property 
( 
p 
=>  
p! "
." #
Email# (
)( )
.) *

IsRequired* 4
(4 5
)5 6
.6 7
HasColumnType7 D
(D E
$strE R
)R S
.S T
HasMaxLengthT `
(` a
$numa c
)c d
;d e
entity 
. 
HasIndex 
( 
e 
=>  
e! "
." #
Email# (
)( )
.) *
IsUnique* 2
(2 3
)3 4
;4 5
entity 
. 
Property 
( 
p 
=>  
p! "
." #
	PanNumber# ,
), -
.- .

IsRequired. 8
(8 9
)9 :
.: ;
HasColumnType; H
(H I
$strI S
)S T
;T U
entity 
. 
HasIndex 
( 
e 
=>  
e! "
." #
	PanNumber# ,
), -
.- .
IsUnique. 6
(6 7
)7 8
;8 9
entity 
. 
Property 
( 
p 
=>  
p! "
." #
PasswordHash# /
)/ 0
.0 1

IsRequired1 ;
(; <
)< =
;= >
entity 
. 
Property 
( 
p 
=>  
p! "
." #
Approved# +
)+ ,
., -

IsRequired- 7
(7 8
)8 9
.9 :
HasColumnType: G
(G H
$strH Q
)Q R
.R S
HasDefaultValueS b
(b c
$strc j
)j k
;k l
} 	
)	 

;
 
} 
}   ∫
ñE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Areas\Identity\Data\ApplicationUser.cs
	namespace		 	
AIRLINE_		
 
.		 
WEBAPP		 
.		 
Areas		 
.		  
Identity		  (
.		( )
Data		) -
;		- .
public 
class 
ApplicationUser 
: 
IdentityUser +
{ 
public 

string 
? 
	PanNumber 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
Approved 
{ 
get !
;! "
set# &
;& '
}( )
} ∫R
úE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Areas 
.  
Identity  (
.( )
Pages) .
.. /
Account/ 6
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 

UserStatus #
_userStatus$ /
;/ 0
public 

LoginModel 
( 
SignInManager '
<' (
ApplicationUser( 7
>7 8
signInManager9 F
,F G
ILoggerH O
<O P

LoginModelP Z
>Z [
logger\ b
,b c
UserManagerd o
<o p
ApplicationUserp 
>	 Ä
userManager
Å å
,
å ç

UserStatus
é ò

userStatus
ô £
)
£ §
{ 	
_signInManager   
=   
signInManager   *
;  * +
_logger!! 
=!! 
logger!! 
;!! 
_userManager"" 
="" 
userManager"" &
;""& '
_userStatus## 
=## 

userStatus## $
;##$ %
}$$ 	
[** 	
BindProperty**	 
]** 
public++ 

InputModel++ 
Input++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public11 
IList11 
<11  
AuthenticationScheme11 )
>11) *
ExternalLogins11+ 9
{11: ;
get11< ?
;11? @
set11A D
;11D E
}11F G
public77 
string77 
	ReturnUrl77 
{77  !
get77" %
;77% &
set77' *
;77* +
}77, -
[== 	
TempData==	 
]== 
public>> 
string>> 
ErrorMessage>> "
{>># $
get>>% (
;>>( )
set>>* -
;>>- .
}>>/ 0
publicDD 
classDD 

InputModelDD 
{EE 	
[JJ 
RequiredJJ 
]JJ 
[KK 
EmailAddressKK 
]KK 
[LL 
DisplayLL 
(LL 
NameLL 
=LL 
$strLL #
)LL# $
]LL$ %
[MM 
	MaxLengthMM 
(MM 
$numMM 
)MM 
]MM 
publicNN 
stringNN 
EmailNN 
{NN  !
getNN" %
;NN% &
setNN' *
;NN* +
}NN, -
[TT 
RequiredTT 
]TT 
[UU 
DataTypeUU 
(UU 
DataTypeUU 
.UU 
PasswordUU '
)UU' (
]UU( )
[VV 
StringLengthVV 
(VV 
$numVV 
,VV 
ErrorMessageVV *
=VV+ ,
$strVV- k
,VVk l
MinimumLengthVVm z
=VV{ |
$numVV} ~
)VV~ 
]	VV Ä
[WW 
DisplayWW 
(WW 
NameWW 
=WW 
$strWW &
)WW& '
]WW' (
publicXX 
stringXX 
PasswordXX "
{XX# $
getXX% (
;XX( )
setXX* -
;XX- .
}XX/ 0
[^^ 
Display^^ 
(^^ 
Name^^ 
=^^ 
$str^^ *
)^^* +
]^^+ ,
public__ 
bool__ 

RememberMe__ "
{__# $
get__% (
;__( )
set__* -
;__- .
}__/ 0
}`` 	
publicbb 
asyncbb 
Taskbb 

OnGetAsyncbb $
(bb$ %
stringbb% +
	returnUrlbb, 5
=bb6 7
nullbb8 <
)bb< =
{cc 	
ifdd 
(dd 
!dd 
stringdd 
.dd 
IsNullOrEmptydd %
(dd% &
ErrorMessagedd& 2
)dd2 3
)dd3 4
{ee 

ModelStateff 
.ff 
AddModelErrorff (
(ff( )
stringff) /
.ff/ 0
Emptyff0 5
,ff5 6
ErrorMessageff7 C
)ffC D
;ffD E
}gg 
	returnUrlii 
??=ii 
Urlii 
.ii 
Contentii %
(ii% &
$strii& *
)ii* +
;ii+ ,
awaitll 
HttpContextll 
.ll 
SignOutAsyncll *
(ll* +
IdentityConstantsll+ <
.ll< =
ExternalSchemell= K
)llK L
;llL M
ExternalLoginsnn 
=nn 
(nn 
awaitnn #
_signInManagernn$ 2
.nn2 31
%GetExternalAuthenticationSchemesAsyncnn3 X
(nnX Y
)nnY Z
)nnZ [
.nn[ \
ToListnn\ b
(nnb c
)nnc d
;nnd e
	ReturnUrlpp 
=pp 
	returnUrlpp !
;pp! "
}qq 	
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (
OnPostAsyncss) 4
(ss4 5
stringss5 ;
	returnUrlss< E
=ssF G
nullssH L
)ssL M
{tt 	
	returnUrluu 
??=uu 
Urluu 
.uu 
Contentuu %
(uu% &
$struu& *
)uu* +
;uu+ ,
ExternalLoginsww 
=ww 
(ww 
awaitww #
_signInManagerww$ 2
.ww2 31
%GetExternalAuthenticationSchemesAsyncww3 X
(wwX Y
)wwY Z
)wwZ [
.ww[ \
ToListww\ b
(wwb c
)wwc d
;wwd e
ifyy 
(yy 

ModelStateyy 
.yy 
IsValidyy "
)yy" #
{zz 
var{{ 
UserForApproval{{ #
={{$ %
await{{& +
_userManager{{, 8
.{{8 9
Users{{9 >
.{{> ?
Where{{? D
({{D E
user{{E I
=>{{J L
user{{M Q
.{{Q R
Email{{R W
=={{X Z
Input{{[ `
.{{` a
Email{{a f
){{f g
.{{g h
FirstOrDefaultAsync{{h {
({{{ |
){{| }
;{{} ~
if|| 
(|| 
UserForApproval|| "
!=||# %
null||& *
)||* +
{}} 
if~~ 
(~~ 
UserForApproval~~ '
.~~' (
Approved~~( 0
.~~0 1
Contains~~1 9
(~~9 :
$str~~: @
)~~@ A
)~~A B
{ 
var
ÄÄ 
result
ÄÄ "
=
ÄÄ# $
await
ÄÄ% *
_signInManager
ÄÄ+ 9
.
ÄÄ9 :!
PasswordSignInAsync
ÄÄ: M
(
ÄÄM N
Input
ÄÄN S
.
ÄÄS T
Email
ÄÄT Y
,
ÄÄY Z
Input
ÄÄ[ `
.
ÄÄ` a
Password
ÄÄa i
,
ÄÄi j
Input
ÄÄk p
.
ÄÄp q

RememberMe
ÄÄq {
,
ÄÄ{ |
lockoutOnFailureÄÄ} ç
:ÄÄç é
falseÄÄè î
)ÄÄî ï
;ÄÄï ñ
if
ÅÅ 
(
ÅÅ 
result
ÅÅ "
.
ÅÅ" #
	Succeeded
ÅÅ# ,
)
ÅÅ, -
{
ÇÇ 
_logger
ÉÉ #
.
ÉÉ# $
LogInformation
ÉÉ$ 2
(
ÉÉ2 3
$str
ÉÉ3 D
)
ÉÉD E
;
ÉÉE F
_userStatus
ÑÑ '
.
ÑÑ' (
Approved
ÑÑ( 0
=
ÑÑ1 2
true
ÑÑ3 7
;
ÑÑ7 8
return
ÖÖ "
LocalRedirect
ÖÖ# 0
(
ÖÖ0 1
	returnUrl
ÖÖ1 :
)
ÖÖ: ;
;
ÖÖ; <
}
ÜÜ 
else
áá 
{
àà 

ModelState
ââ &
.
ââ& '
AddModelError
ââ' 4
(
ââ4 5
string
ââ5 ;
.
ââ; <
Empty
ââ< A
,
ââA B
$str
ââC [
)
ââ[ \
;
ââ\ ]
return
ää "
Page
ää# '
(
ää' (
)
ää( )
;
ää) *
}
ãã 
}
åå 
else
çç 
if
çç 
(
çç 
UserForApproval
çç ,
.
çç, -
Approved
çç- 5
.
çç5 6
Contains
çç6 >
(
çç> ?
$str
çç? E
)
ççE F
)
ççF G
{
éé 

ModelState
èè "
.
èè" #
AddModelError
èè# 0
(
èè0 1
string
èè1 7
.
èè7 8
Empty
èè8 =
,
èè= >
$strèè? à
)èèà â
;èèâ ä
_userStatus
êê #
.
êê# $
Approved
êê$ ,
=
êê- .
false
êê/ 4
;
êê4 5
return
ëë 
Page
ëë #
(
ëë# $
)
ëë$ %
;
ëë% &
}
íí 
else
ìì 
{
îî 

ModelState
ïï "
.
ïï" #
AddModelError
ïï# 0
(
ïï0 1
string
ïï1 7
.
ïï7 8
Empty
ïï8 =
,
ïï= >
$strïï? Å
)ïïÅ Ç
;ïïÇ É
_userStatus
ññ #
.
ññ# $
Approved
ññ$ ,
=
ññ- .
false
ññ/ 4
;
ññ4 5
return
óó 
Page
óó #
(
óó# $
)
óó$ %
;
óó% &
}
òò 
}
ôô 
else
öö 
{
õõ 

ModelState
úú 
.
úú 
AddModelError
úú ,
(
úú, -
string
úú- 3
.
úú3 4
Empty
úú4 9
,
úú9 :
$str
úú; S
)
úúS T
;
úúT U
return
ùù 
Page
ùù 
(
ùù  
)
ùù  !
;
ùù! "
}
ûû 
}
üü 
return
¢¢ 
Page
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
}
§§ 
}•• ‹
ùE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Areas 
.  
Identity  (
.( )
Pages) .
.. /
Account/ 6
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
ApplicationUser) 8
>8 9
signInManager: G
,G H
ILoggerI P
<P Q
LogoutModelQ \
>\ ]
logger^ d
)d e
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ﬁt
üE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Areas 
.  
Identity  (
.( )
Pages) .
.. /
Account/ 6
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private   
readonly   
UserManager   $
<  $ %
ApplicationUser  % 4
>  4 5
_userManager  6 B
;  B C
private!! 
readonly!! 

IUserStore!! #
<!!# $
ApplicationUser!!$ 3
>!!3 4

_userStore!!5 ?
;!!? @
private"" 
readonly"" 
IUserEmailStore"" (
<""( )
ApplicationUser"") 8
>""8 9
_emailStore"": E
;""E F
private## 
readonly## 
ILogger##  
<##  !
RegisterModel##! .
>##. /
_logger##0 7
;##7 8
private$$ 
readonly$$ 
IEmailSender$$ %
_emailSender$$& 2
;$$2 3
private%% 
readonly%% 
RoleManager%% $
<%%$ %
IdentityRole%%% 1
>%%1 2
_roleManager%%3 ?
;%%? @
public'' 
RegisterModel'' 
('' 
UserManager(( 
<(( 
ApplicationUser(( '
>((' (
userManager(() 4
,((4 5

IUserStore)) 
<)) 
ApplicationUser)) &
>))& '
	userStore))( 1
,))1 2
SignInManager** 
<** 
ApplicationUser** )
>**) *
signInManager**+ 8
,**8 9
ILogger++ 
<++ 
RegisterModel++ !
>++! "
logger++# )
,++) *
IEmailSender,, 
emailSender,, $
,,,$ %
RoleManager-- 
<-- 
IdentityRole-- $
>--$ %
roleManager--& 1
)--1 2
{.. 	
_userManager// 
=// 
userManager// &
;//& '

_userStore00 
=00 
	userStore00 "
;00" #
_emailStore11 
=11 
GetEmailStore11 '
(11' (
)11( )
;11) *
_signInManager22 
=22 
signInManager22 *
;22* +
_logger33 
=33 
logger33 
;33 
_emailSender44 
=44 
emailSender44 &
;44& '
_roleManager55 
=55 
roleManager55 &
;55& '
}66 	
[<< 	
BindProperty<<	 
]<< 
public== 

InputModel== 
Input== 
{==  !
get==" %
;==% &
set==' *
;==* +
}==, -
publicCC 
stringCC 
	ReturnUrlCC 
{CC  !
getCC" %
;CC% &
setCC' *
;CC* +
}CC, -
publicII 
IListII 
<II  
AuthenticationSchemeII )
>II) *
ExternalLoginsII+ 9
{II: ;
getII< ?
;II? @
setIIA D
;IID E
}IIF G
publicOO 
classOO 

InputModelOO 
{PP 	
[QQ 
RequiredQQ 
]QQ 
[RR 
DisplayRR 
(RR 
NameRR 
=RR 
$strRR (
)RR( )
]RR) *
[SS 
StringLengthSS 
(SS 
$numSS 
,SS 
ErrorMessageSS *
=SS+ ,
$strSS- J
,SSJ K
MinimumLengthSSL Y
=SSZ [
$numSS\ ^
)SS^ _
]SS_ `
[TT 
RegularExpressionTT 
(TT 
$strTT /
,TT/ 0
ErrorMessageTT1 =
=TT> ?
$strTT@ a
)TTa b
]TTb c
publicUU 
stringUU 
	PanNumberUU #
{UU$ %
getUU& )
;UU) *
setUU+ .
;UU. /
}UU0 1
[ZZ 
RequiredZZ 
]ZZ 
[[[ 
EmailAddress[[ 
][[ 
[\\ 
Display\\ 
(\\ 
Name\\ 
=\\ 
$str\\ #
)\\# $
]\\$ %
[]] 
	MaxLength]] 
(]] 
$num]] 
)]] 
]]] 
public^^ 
string^^ 
Email^^ 
{^^  !
get^^" %
;^^% &
set^^' *
;^^* +
}^^, -
[dd 
Requireddd 
]dd 
[ee 
StringLengthee 
(ee 
$numee 
,ee 
ErrorMessageee *
=ee+ ,
$stree- k
,eek l
MinimumLengtheem z
=ee{ |
$numee} ~
)ee~ 
]	ee Ä
[ff 
DataTypeff 
(ff 
DataTypeff 
.ff 
Passwordff '
)ff' (
]ff( )
[gg 
Displaygg 
(gg 
Namegg 
=gg 
$strgg &
)gg& '
]gg' (
publichh 
stringhh 
Passwordhh "
{hh# $
gethh% (
;hh( )
sethh* -
;hh- .
}hh/ 0
[nn 
DataTypenn 
(nn 
DataTypenn 
.nn 
Passwordnn '
)nn' (
]nn( )
[oo 
Displayoo 
(oo 
Nameoo 
=oo 
$stroo .
)oo. /
]oo/ 0
[pp 
Comparepp 
(pp 
$strpp 
,pp  
ErrorMessagepp! -
=pp. /
$strpp0 f
)ppf g
]ppg h
publicqq 
stringqq 
ConfirmPasswordqq )
{qq* +
getqq, /
;qq/ 0
setqq1 4
;qq4 5
}qq6 7
}rr 	
publicuu 
asyncuu 
Taskuu 

OnGetAsyncuu $
(uu$ %
stringuu% +
	returnUrluu, 5
=uu6 7
nulluu8 <
)uu< =
{vv 	
	ReturnUrlww 
=ww 
	returnUrlww !
;ww! "
ExternalLoginsxx 
=xx 
(xx 
awaitxx #
_signInManagerxx$ 2
.xx2 31
%GetExternalAuthenticationSchemesAsyncxx3 X
(xxX Y
)xxY Z
)xxZ [
.xx[ \
ToListxx\ b
(xxb c
)xxc d
;xxd e
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
IActionResult{{ '
>{{' (
OnPostAsync{{) 4
({{4 5
string{{5 ;
	returnUrl{{< E
={{F G
null{{H L
){{L M
{|| 	
	returnUrl}} 
??=}} 
Url}} 
.}} 
Content}} %
(}}% &
$str}}& *
)}}* +
;}}+ ,
var 
role 
= 
$str !
;! "
ExternalLogins
ÅÅ 
=
ÅÅ 
(
ÅÅ 
await
ÅÅ #
_signInManager
ÅÅ$ 2
.
ÅÅ2 33
%GetExternalAuthenticationSchemesAsync
ÅÅ3 X
(
ÅÅX Y
)
ÅÅY Z
)
ÅÅZ [
.
ÅÅ[ \
ToList
ÅÅ\ b
(
ÅÅb c
)
ÅÅc d
;
ÅÅd e
if
ÇÇ 
(
ÇÇ 

ModelState
ÇÇ 
.
ÇÇ 
IsValid
ÇÇ "
)
ÇÇ" #
{
ÉÉ 
var
ÑÑ 
user
ÑÑ 
=
ÑÑ 

CreateUser
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
user
ÜÜ 
.
ÜÜ 
	PanNumber
ÜÜ 
=
ÜÜ  
Input
ÜÜ! &
.
ÜÜ& '
	PanNumber
ÜÜ' 0
;
ÜÜ0 1
await
àà 

_userStore
àà  
.
àà  !
SetUserNameAsync
àà! 1
(
àà1 2
user
àà2 6
,
àà6 7
Input
àà8 =
.
àà= >
Email
àà> C
,
ààC D
CancellationToken
ààE V
.
ààV W
None
ààW [
)
àà[ \
;
àà\ ]
await
ââ 
_emailStore
ââ !
.
ââ! "
SetEmailAsync
ââ" /
(
ââ/ 0
user
ââ0 4
,
ââ4 5
Input
ââ6 ;
.
ââ; <
Email
ââ< A
,
ââA B
CancellationToken
ââC T
.
ââT U
None
ââU Y
)
ââY Z
;
ââZ [
var
ãã 
result
ãã 
=
ãã 
await
ãã "
_userManager
ãã# /
.
ãã/ 0
CreateAsync
ãã0 ;
(
ãã; <
user
ãã< @
,
ãã@ A
Input
ããB G
.
ããG H
Password
ããH P
)
ããP Q
;
ããQ R
if
çç 
(
çç 
result
çç 
.
çç 
	Succeeded
çç $
)
çç$ %
{
éé 
_logger
èè 
.
èè 
LogInformation
èè *
(
èè* +
$str
èè+ V
)
èèV W
;
èèW X
await
ëë 
_userManager
ëë &
.
ëë& '
AddToRoleAsync
ëë' 5
(
ëë5 6
user
ëë6 :
,
ëë: ;
role
ëë< @
)
ëë@ A
;
ëëA B
	SendEmail
ìì 
(
ìì 
Input
ìì #
.
ìì# $
Email
ìì$ )
)
ìì) *
;
ìì* +
if
°° 
(
°° 
_userManager
°° $
.
°°$ %
Options
°°% ,
.
°°, -
SignIn
°°- 3
.
°°3 4%
RequireConfirmedAccount
°°4 K
)
°°K L
{
¢¢ 
return
££ 
RedirectToPage
££ -
(
££- .
$str
££. D
,
££D E
new
££F I
{
££J K
email
££L Q
=
££R S
Input
££T Y
.
££Y Z
Email
££Z _
,
££_ `
	returnUrl
££a j
=
££k l
	returnUrl
££m v
}
££w x
)
££x y
;
££y z
}
§§ 
else
•• 
{
¶¶ 
return
®® 
LocalRedirect
®® ,
(
®®, -
	returnUrl
®®- 6
)
®®6 7
;
®®7 8
}
©© 
}
™™ 
foreach
´´ 
(
´´ 
var
´´ 
error
´´ "
in
´´# %
result
´´& ,
.
´´, -
Errors
´´- 3
)
´´3 4
{
¨¨ 

ModelState
≠≠ 
.
≠≠ 
AddModelError
≠≠ ,
(
≠≠, -
string
≠≠- 3
.
≠≠3 4
Empty
≠≠4 9
,
≠≠9 :
error
≠≠; @
.
≠≠@ A
Description
≠≠A L
)
≠≠L M
;
≠≠M N
}
ÆÆ 
}
ØØ 
return
≤≤ 
Page
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
private
µµ 
ApplicationUser
µµ 

CreateUser
µµ  *
(
µµ* +
)
µµ+ ,
{
∂∂ 	
try
∑∑ 
{
∏∏ 
return
ππ 
	Activator
ππ  
.
ππ  !
CreateInstance
ππ! /
<
ππ/ 0
ApplicationUser
ππ0 ?
>
ππ? @
(
ππ@ A
)
ππA B
;
ππB C
}
∫∫ 
catch
ªª 
{
ºº 
throw
ΩΩ 
new
ΩΩ '
InvalidOperationException
ΩΩ 3
(
ΩΩ3 4
$"
ΩΩ4 6
$str
ΩΩ6 S
{
ΩΩS T
nameof
ΩΩT Z
(
ΩΩZ [
ApplicationUser
ΩΩ[ j
)
ΩΩj k
}
ΩΩk l
$str
ΩΩl o
"
ΩΩo p
+
ΩΩq r
$"
ææ 
$str
ææ #
{
ææ# $
nameof
ææ$ *
(
ææ* +
ApplicationUser
ææ+ :
)
ææ: ;
}
ææ; <
$strææ< ç
"ææç é
+ææè ê
$"
øø 
$str
øø a
"
øøa b
)
øøb c
;
øøc d
}
¿¿ 
}
¡¡ 	
private
√√ 
IUserEmailStore
√√ 
<
√√  
ApplicationUser
√√  /
>
√√/ 0
GetEmailStore
√√1 >
(
√√> ?
)
√√? @
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
!
≈≈ 
_userManager
≈≈ 
.
≈≈ 
SupportsUserEmail
≈≈ /
)
≈≈/ 0
{
∆∆ 
throw
«« 
new
«« #
NotSupportedException
«« /
(
««/ 0
$str
««0 j
)
««j k
;
««k l
}
»» 
return
…… 
(
…… 
IUserEmailStore
…… #
<
……# $
ApplicationUser
……$ 3
>
……3 4
)
……4 5

_userStore
……5 ?
;
……? @
}
   	
private
ÃÃ 
void
ÃÃ 
	SendEmail
ÃÃ 
(
ÃÃ 
string
ÃÃ %
receiversEmail
ÃÃ& 4
)
ÃÃ4 5
{
ÕÕ 	
string
ŒŒ 
sendersEmail
ŒŒ 
=
ŒŒ  !
$str
ŒŒ" ;
,
ŒŒ; <
password
ŒŒ= E
=
ŒŒF G
$str
ŒŒH Z
,
ŒŒZ [
loginUrl
ŒŒ\ d
=
ŒŒe f
$strŒŒg ñ
;ŒŒñ ó
MailMessage
–– 
mailMessageObj
–– &
=
––' (
new
––) ,
MailMessage
––- 8
(
––8 9
sendersEmail
––9 E
,
––E F
receiversEmail
––G U
)
––U V
;
––V W
mailMessageObj
—— 
.
—— 
Subject
—— "
=
——# $
$str
——% F
;
——F G
mailMessageObj
““ 
.
““ 
Body
““ 
=
““  !
$"
““" $
$str
““$ T
{
““T U
loginUrl
““U ]
}
““] ^
"
““^ _
;
““_ `

SmtpClient
”” 

smtpClient
”” !
=
””" #
new
””$ '

SmtpClient
””( 2
(
””2 3
$str
””3 C
,
””C D
$num
””E H
)
””H I
;
””I J

smtpClient
‘‘ 
.
‘‘ 
Credentials
‘‘ "
=
‘‘# $
new
‘‘% (
System
‘‘) /
.
‘‘/ 0
Net
‘‘0 3
.
‘‘3 4
NetworkCredential
‘‘4 E
(
‘‘E F
)
‘‘F G
{
’’ 
UserName
÷÷ 
=
÷÷ 
sendersEmail
÷÷ '
,
÷÷' (
Password
◊◊ 
=
◊◊ 
password
◊◊ #
}
ÿÿ 
;
ÿÿ 

smtpClient
ŸŸ 
.
ŸŸ 
	EnableSsl
ŸŸ  
=
ŸŸ! "
true
ŸŸ# '
;
ŸŸ' (

smtpClient
⁄⁄ 
.
⁄⁄ 
Send
⁄⁄ 
(
⁄⁄ 
mailMessageObj
⁄⁄ *
)
⁄⁄* +
;
⁄⁄+ ,
}
€€ 	
}
‹‹ 
}›› ï4
éE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Controllers\AdminController.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Controllers %
{ 
[		 
	Authorize		 
(		 
Roles		 
=		 
$str		 
)		 
]		  
public

 

class

 
AdminController

  
:

! "

Controller

# -
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
public 
AdminController 
( 
ILogger &
<& '
HomeController' 5
>5 6
logger7 =
,= >
UserManager? J
<J K
ApplicationUserK Z
>Z [
userManager\ g
)g h
{ 	
_logger 
= 
logger 
; 
_userManager 
= 
userManager &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (&
ShowAllNonApprovedRequests) C
(C D
)D E
{E F
var 
users 
= 
await 
_userManager *
.* +
Users+ 0
.0 1
Where1 6
(6 7
user7 ;
=>< >
user? C
.C D
ApprovedD L
==M O
$strP W
)W X
.X Y
ToListAsyncY d
(d e
)e f
;f g
return 
View 
( 
users 
) 
; 
} 	
[ 	
HttpPut	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
ApproveOrReject) 8
(8 9
string9 ?
userId@ F
,F G
stringH N
statusO U
)U V
{ 	
if 
( 
userId 
== 
null 
|| !
status" (
==) +
null, 0
)0 1
return2 8

BadRequest9 C
(C D
$strD Y
)Y Z
;Z [
else 
{ 
var   
user   
=   
await    
_userManager  ! -
.  - .
Users  . 3
.  3 4
Where  4 9
(  9 :
user  : >
=>  ? A
user  B F
.  F G
Id  G I
==  J L
userId  M S
)  S T
.  T U
FirstOrDefaultAsync  U h
(  h i
)  i j
;  j k
if!! 
(!! 
user!! 
==!! 
null!!  
)!!  !
return!!" (
NotFound!!) 1
(!!1 2
$"!!2 4
$str!!4 K
{!!K L
userId!!L R
}!!R S
$str!!S \
"!!\ ]
)!!] ^
;!!^ _
else"" 
{## 
if$$ 
($$ 
status$$ 
==$$ !
$str$$" (
||$$) +
status$$, 2
==$$3 5
$str$$6 <
)$$< =
{%% 
user&& 
.&& 
Approved&& %
=&&& '
$"&&( *
{&&* +
status&&+ 1
}&&1 2
"&&2 3
;&&3 4
await'' 
_userManager'' *
.''* +
UpdateAsync''+ 6
(''6 7
user''7 ;
)''; <
;''< =
return(( 
Json(( #
(((# $
$str(($ -
)((- .
;((. /
})) 
else** 
{++ 
return,, 

BadRequest,, )
(,,) *
$str,,* L
),,L M
;,,M N
}-- 
}.. 
}// 
}00 	
[99 	
HttpGet99	 
]99 
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
GetOperators::) 5
(::5 6
)::6 7
{;; 	
var<< 
users<< 
=<< 
await<< 
_userManager<< *
.<<* +
Users<<+ 0
.<<0 1
Where<<1 6
(<<6 7
user<<7 ;
=><<< >
user<<? C
.<<C D
Id<<D F
!=<<G I
$str<<J V
)<<V W
.<<W X
ToListAsync<<X c
(<<c d
)<<d e
;<<e f
return== 
View== 
(== 
users== 
)== 
;== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
IActionResult@@ '
>@@' (
DeleteOperator@@) 7
(@@7 8
string@@8 >
userId@@? E
)@@E F
{AA 	
ifBB 
(BB 
stringBB 
.BB 
IsNullOrEmptyBB $
(BB$ %
userIdBB% +
)BB+ ,
)BB, -
returnBB. 4

BadRequestBB5 ?
(BB? @
$strBB@ U
)BBU V
;BBV W
elseCC 
{DD 
varEE 

removeUserEE 
=EE  
awaitEE! &
_userManagerEE' 3
.EE3 4
UsersEE4 9
.EE9 :
WhereEE: ?
(EE? @
userEE@ D
=>EEE G
userEEH L
.EEL M
IdEEM O
==EEP R
userIdEES Y
)EEY Z
.EEZ [
FirstOrDefaultAsyncEE[ n
(EEn o
)EEo p
;EEp q
ifFF 
(FF 

removeUserFF 
==FF !
nullFF" &
)FF& '
returnFF( .
NotFoundFF/ 7
(FF7 8
$"FF8 :
$strFF: Q
{FFQ R
userIdFFR X
}FFX Y
$strFFY b
"FFb c
)FFc d
;FFd e
elseGG 
{HH 
awaitII 
_userManagerII &
.II& '
DeleteAsyncII' 2
(II2 3

removeUserII3 =
)II= >
;II> ?
returnJJ 
RedirectToActionJJ +
(JJ+ ,
$strJJ, :
)JJ: ;
;JJ; <
}KK 
}LL 
}MM 	
}NN 
}OO ∂&
çE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Controllers\HomeController.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Controllers %
{ 
public		 

class		 
HomeController		 
:		  !

Controller		" ,
{

 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
UserManager )
<) *
ApplicationUser* 9
>9 :
userManager; F
,F G
ILoggerH O
<O P
HomeControllerP ^
>^ _
logger` f
)f g
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 

JsonResult "
CheckEmailAvailability 0
(0 1
string1 7
recievedEmail8 E
)E F
{ 	
if 
( 
string 
. 
IsNullOrEmpty #
(# $
recievedEmail$ 1
)1 2
)2 3
return4 :
Json; ?
(? @
$str@ U
)U V
;V W
var #
recordWithRecievedEmail '
=( )
_userManager* 6
.6 7
Users7 <
.< =
Where= B
(B C
userC G
=>H J
userK O
.O P
EmailP U
==V X
recievedEmailY f
)f g
.g h
FirstOrDefaulth v
(v w
)w x
;x y
if!! 
(!! #
recordWithRecievedEmail!! '
==!!( *
null!!+ /
)!!/ 0
{"" 
return## 
Json## 
(## 
$num## 
)## 
;## 
}$$ 
else%% 
{&& 
return'' 
Json'' 
('' 
$num'' 
)'' 
;'' 
}(( 
})) 	
[++ 	
HttpPost++	 
]++ 
public,, 

JsonResult,,  
CheckPanAvailability,, .
(,,. /
string,,/ 5
recievedPanNumber,,6 G
),,G H
{-- 	
if.. 
(.. 
string.. 
... 
IsNullOrEmpty.. $
(..$ %
recievedPanNumber..% 6
)..6 7
)..7 8
return..9 ?
Json..@ D
(..D E
$str..E Z
)..Z [
;..[ \
var00 !
recordWithRecievedPan00 %
=00& '
_userManager00( 4
.004 5
Users005 :
.00: ;
Where00; @
(00@ A
user00A E
=>00F H
user00I M
.00M N
	PanNumber00N W
==00X Z
recievedPanNumber00[ l
)00l m
.00m n
FirstOrDefault00n |
(00| }
)00} ~
;00~ 
if22 
(22 !
recordWithRecievedPan22 %
==22& (
null22) -
)22- .
{33 
return44 
Json44 
(44 
$num44 
)44 
;44 
}55 
else66 
{77 
return88 
Json88 
(88 
$num88 
)88 
;88 
}99 
}:: 	
[<< 	
ResponseCache<<	 
(<< 
Duration<< 
=<<  !
$num<<" #
,<<# $
Location<<% -
=<<. /!
ResponseCacheLocation<<0 E
.<<E F
None<<F J
,<<J K
NoStore<<L S
=<<T U
true<<V Z
)<<Z [
]<<[ \
public== 
IActionResult== 
Error== "
(==" #
)==# $
{>> 	
return?? 
View?? 
(?? 
new?? 
ErrorViewModel?? *
{??+ ,
	RequestId??- 6
=??7 8
Activity??9 A
.??A B
Current??B I
???I J
.??J K
Id??K M
????N P
HttpContext??Q \
.??\ ]
TraceIdentifier??] l
}??m n
)??n o
;??o p
}@@ 	
}AA 
}BB ≥6
ëE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Controllers\OperatorController.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Controllers %
{ 
[		 
	Authorize		 
(		 
Roles		 
=		 
$str		 !
)		! "
]		" #
public

 

class

 
OperatorController

 #
:

$ %

Controller

& 0
{ 
Uri 
baseAddress 
= 
new 
Uri !
(! "
$str" >
)> ?
;? @

HttpClient 
client 
; 
public 
OperatorController !
(! "
)" #
{ 	
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
client 
. 
BaseAddress 
=  
baseAddress! ,
;, -
} 	
public 
ActionResult 
ShowAllAirlines +
(+ ,
), -
{ 	
List 
< 
Airline 
> 
? 
airlines #
=$ %
new& )
List* .
<. /
Airline/ 6
>6 7
(7 8
)8 9
;9 :
HttpResponseMessage 
response  (
=) *
client+ 1
.1 2
GetAsync2 :
(: ;
client; A
.A B
BaseAddressB M
+N O
$strP k
)k l
.l m
Resultm s
;s t
if 
( 
response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
airlines 
= 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
List9 =
<= >
Airline> E
>E F
>F G
(G H
dataH L
)L M
;M N
if 
( 
airlines 
!= 
null  $
)$ %
{ 
return 
View 
(  
airlines  (
.( )
OrderBy) 0
(0 1
orderBy1 8
=>9 ;
orderBy< C
.C D
NameD H
)H I
)I J
;J K
} 
}   
return!! 
View!! 
(!! 
airlines!!  
)!!  !
;!!! "
}"" 	
public$$ 
ActionResult$$ 
CreateNewAirline$$ ,
($$, -
)$$- .
{%% 	
return&& 
View&& 
(&& 
)&& 
;&& 
}'' 	
[)) 	
HttpPost))	 
])) 
public** 
ActionResult** !
CreateOrUpdateAirline** 1
(**1 2
Airline**2 9
airline**: A
)**A B
{++ 	
string,, 
data,, 
=,, 
JsonConvert,, %
.,,% &
SerializeObject,,& 5
(,,5 6
airline,,6 =
),,= >
;,,> ?
StringContent-- 
stringContent-- '
=--( )
new--* -
StringContent--. ;
(--; <
data--< @
,--@ A
Encoding--B J
.--J K
UTF8--K O
,--O P
$str--Q c
)--c d
;--d e
if// 
(// 
airline// 
.// 
Id// 
==// 
$num// 
)//  
{00 
HttpResponseMessage11 #
response11$ ,
=11- .
client11/ 5
.115 6
	PostAsync116 ?
(11? @
client11@ F
.11F G
BaseAddress11G R
+11S T
$str11U n
,11n o
stringContent11p }
)11} ~
.11~ 
Result	11 Ö
;
11Ö Ü
if22 
(22 
response22 
.22 
IsSuccessStatusCode22 0
)220 1
{33 
return44 
RedirectToAction44 +
(44+ ,
$str44, =
)44= >
;44> ?
}55 
return66 
View66 
(66 
$str66 .
,66. /
airline660 7
)667 8
;668 9
}77 
else88 
{99 
HttpResponseMessage:: #
response::$ ,
=::- .
client::/ 5
.::5 6
PutAsync::6 >
(::> ?
client::? E
.::E F
BaseAddress::F Q
+::R S
$"::T V
$str::V {
{::{ |
airline	::| É
.
::É Ñ
Id
::Ñ Ü
}
::Ü á
"
::á à
,
::à â
stringContent
::ä ó
)
::ó ò
.
::ò ô
Result
::ô ü
;
::ü †
if;; 
(;; 
response;; 
.;; 
IsSuccessStatusCode;; 0
);;0 1
{<< 
return== 
RedirectToAction== +
(==+ ,
$str==, =
)=== >
;==> ?
}>> 
return?? 
View?? 
(?? 
$str?? .
,??. /
airline??0 7
)??7 8
;??8 9
}@@ 
}AA 	
publicCC 
ActionResultCC 
RemoveAirlineCC )
(CC) *
intCC* -
	airlineIdCC. 7
)CC7 8
{DD 	
HttpResponseMessageEE 
responseEE  (
=EE) *
clientEE+ 1
.EE1 2
DeleteAsyncEE2 =
(EE= >
clientEE> D
.EED E
BaseAddressEEE P
+EEQ R
$"EES U
$strEEU z
{EEz {
	airlineId	EE{ Ñ
}
EEÑ Ö
"
EEÖ Ü
)
EEÜ á
.
EEá à
Result
EEà é
;
EEé è
ifFF 
(FF 
responseFF 
.FF 
IsSuccessStatusCodeFF ,
)FF, -
{GG 
returnHH 
RedirectToActionHH '
(HH' (
$strHH( 9
)HH9 :
;HH: ;
}II 
returnJJ 

BadRequestJJ 
(JJ 
$strJJ 4
)JJ4 5
;JJ5 6
}KK 	
publicMM 
ActionResultMM 
UpdateAirlineMM )
(MM) *
AirlineMM* 1
airlineMM2 9
)MM9 :
{NN 	
returnOO 
ViewOO 
(OO 
$strOO *
,OO* +
airlineOO, 3
)OO3 4
;OO4 5
}PP 	
}QQ 
}RR ø—
îE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Migrations\20220823081124_initial.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 

Migrations $
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	PanNumber 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
UserName   
=   
table   $
.  $ %
Column  % +
<  + ,
string  , 2
>  2 3
(  3 4
type  4 8
:  8 9
$str  : I
,  I J
	maxLength  K T
:  T U
$num  V Y
,  Y Z
nullable  [ c
:  c d
true  e i
)  i j
,  j k
NormalizedUserName!! &
=!!' (
table!!) .
.!!. /
Column!!/ 5
<!!5 6
string!!6 <
>!!< =
(!!= >
type!!> B
:!!B C
$str!!D S
,!!S T
	maxLength!!U ^
:!!^ _
$num!!` c
,!!c d
nullable!!e m
:!!m n
true!!o s
)!!s t
,!!t u
Email"" 
="" 
table"" !
.""! "
Column""" (
<""( )
string"") /
>""/ 0
(""0 1
type""1 5
:""5 6
$str""7 D
,""D E
	maxLength""F O
:""O P
$num""Q S
,""S T
nullable""U ]
:""] ^
false""_ d
)""d e
,""e f
NormalizedEmail## #
=##$ %
table##& +
.##+ ,
Column##, 2
<##2 3
string##3 9
>##9 :
(##: ;
type##; ?
:##? @
$str##A P
,##P Q
	maxLength##R [
:##[ \
$num##] `
,##` a
nullable##b j
:##j k
true##l p
)##p q
,##q r
EmailConfirmed$$ "
=$$# $
table$$% *
.$$* +
Column$$+ 1
<$$1 2
bool$$2 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> C
,$$C D
nullable$$E M
:$$M N
false$$O T
)$$T U
,$$U V
PasswordHash%%  
=%%! "
table%%# (
.%%( )
Column%%) /
<%%/ 0
string%%0 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> M
,%%M N
nullable%%O W
:%%W X
false%%Y ^
)%%^ _
,%%_ `
SecurityStamp&& !
=&&" #
table&&$ )
.&&) *
Column&&* 0
<&&0 1
string&&1 7
>&&7 8
(&&8 9
type&&9 =
:&&= >
$str&&? N
,&&N O
nullable&&P X
:&&X Y
true&&Z ^
)&&^ _
,&&_ `
ConcurrencyStamp'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
string''4 :
>'': ;
(''; <
type''< @
:''@ A
$str''B Q
,''Q R
nullable''S [
:''[ \
true''] a
)''a b
,''b c
PhoneNumber(( 
=((  !
table((" '
.((' (
Column((( .
<((. /
string((/ 5
>((5 6
(((6 7
type((7 ;
:((; <
$str((= L
,((L M
nullable((N V
:((V W
true((X \
)((\ ]
,((] ^ 
PhoneNumberConfirmed)) (
=))) *
table))+ 0
.))0 1
Column))1 7
<))7 8
bool))8 <
>))< =
())= >
type))> B
:))B C
$str))D I
,))I J
nullable))K S
:))S T
false))U Z
)))Z [
,))[ \
TwoFactorEnabled** $
=**% &
table**' ,
.**, -
Column**- 3
<**3 4
bool**4 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
,**W X

LockoutEnd++ 
=++  
table++! &
.++& '
Column++' -
<++- .
DateTimeOffset++. <
>++< =
(++= >
type++> B
:++B C
$str++D T
,++T U
nullable++V ^
:++^ _
true++` d
)++d e
,++e f
LockoutEnabled,, "
=,,# $
table,,% *
.,,* +
Column,,+ 1
<,,1 2
bool,,2 6
>,,6 7
(,,7 8
type,,8 <
:,,< =
$str,,> C
,,,C D
nullable,,E M
:,,M N
false,,O T
),,T U
,,,U V
AccessFailedCount-- %
=--& '
table--( -
.--- .
Column--. 4
<--4 5
int--5 8
>--8 9
(--9 :
type--: >
:--> ?
$str--@ E
,--E F
nullable--G O
:--O P
false--Q V
)--V W
}.. 
,.. 
constraints// 
:// 
table// "
=>//# %
{00 
table11 
.11 

PrimaryKey11 $
(11$ %
$str11% 5
,115 6
x117 8
=>119 ;
x11< =
.11= >
Id11> @
)11@ A
;11A B
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55 (
,55( )
columns66 
:66 
table66 
=>66 !
new66" %
{77 
Id88 
=88 
table88 
.88 
Column88 %
<88% &
int88& )
>88) *
(88* +
type88+ /
:88/ 0
$str881 6
,886 7
nullable888 @
:88@ A
false88B G
)88G H
.99 

Annotation99 #
(99# $
$str99$ 8
,998 9
$str99: @
)99@ A
,99A B
RoleId:: 
=:: 
table:: "
.::" #
Column::# )
<::) *
string::* 0
>::0 1
(::1 2
type::2 6
:::6 7
$str::8 G
,::G H
nullable::I Q
:::Q R
false::S X
)::X Y
,::Y Z
	ClaimType;; 
=;; 
table;;  %
.;;% &
Column;;& ,
<;;, -
string;;- 3
>;;3 4
(;;4 5
type;;5 9
:;;9 :
$str;;; J
,;;J K
nullable;;L T
:;;T U
true;;V Z
);;Z [
,;;[ \

ClaimValue<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
string<<. 4
><<4 5
(<<5 6
type<<6 :
:<<: ;
$str<<< K
,<<K L
nullable<<M U
:<<U V
true<<W [
)<<[ \
}== 
,== 
constraints>> 
:>> 
table>> "
=>>># %
{?? 
table@@ 
.@@ 

PrimaryKey@@ $
(@@$ %
$str@@% :
,@@: ;
x@@< =
=>@@> @
x@@A B
.@@B C
Id@@C E
)@@E F
;@@F G
tableAA 
.AA 

ForeignKeyAA $
(AA$ %
nameBB 
:BB 
$strBB F
,BBF G
columnCC 
:CC 
xCC  !
=>CC" $
xCC% &
.CC& '
RoleIdCC' -
,CC- .
principalTableDD &
:DD& '
$strDD( 5
,DD5 6
principalColumnEE '
:EE' (
$strEE) -
,EE- .
onDeleteFF  
:FF  !
ReferentialActionFF" 3
.FF3 4
CascadeFF4 ;
)FF; <
;FF< =
}GG 
)GG 
;GG 
migrationBuilderII 
.II 
CreateTableII (
(II( )
nameJJ 
:JJ 
$strJJ (
,JJ( )
columnsKK 
:KK 
tableKK 
=>KK !
newKK" %
{LL 
IdMM 
=MM 
tableMM 
.MM 
ColumnMM %
<MM% &
intMM& )
>MM) *
(MM* +
typeMM+ /
:MM/ 0
$strMM1 6
,MM6 7
nullableMM8 @
:MM@ A
falseMMB G
)MMG H
.NN 

AnnotationNN #
(NN# $
$strNN$ 8
,NN8 9
$strNN: @
)NN@ A
,NNA B
UserIdOO 
=OO 
tableOO "
.OO" #
ColumnOO# )
<OO) *
stringOO* 0
>OO0 1
(OO1 2
typeOO2 6
:OO6 7
$strOO8 G
,OOG H
nullableOOI Q
:OOQ R
falseOOS X
)OOX Y
,OOY Z
	ClaimTypePP 
=PP 
tablePP  %
.PP% &
ColumnPP& ,
<PP, -
stringPP- 3
>PP3 4
(PP4 5
typePP5 9
:PP9 :
$strPP; J
,PPJ K
nullablePPL T
:PPT U
truePPV Z
)PPZ [
,PP[ \

ClaimValueQQ 
=QQ  
tableQQ! &
.QQ& '
ColumnQQ' -
<QQ- .
stringQQ. 4
>QQ4 5
(QQ5 6
typeQQ6 :
:QQ: ;
$strQQ< K
,QQK L
nullableQQM U
:QQU V
trueQQW [
)QQ[ \
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% :
,UU: ;
xUU< =
=>UU> @
xUUA B
.UUB C
IdUUC E
)UUE F
;UUF G
tableVV 
.VV 

ForeignKeyVV $
(VV$ %
nameWW 
:WW 
$strWW F
,WWF G
columnXX 
:XX 
xXX  !
=>XX" $
xXX% &
.XX& '
UserIdXX' -
,XX- .
principalTableYY &
:YY& '
$strYY( 5
,YY5 6
principalColumnZZ '
:ZZ' (
$strZZ) -
,ZZ- .
onDelete[[  
:[[  !
ReferentialAction[[" 3
.[[3 4
Cascade[[4 ;
)[[; <
;[[< =
}\\ 
)\\ 
;\\ 
migrationBuilder^^ 
.^^ 
CreateTable^^ (
(^^( )
name__ 
:__ 
$str__ (
,__( )
columns`` 
:`` 
table`` 
=>`` !
new``" %
{aa 
LoginProviderbb !
=bb" #
tablebb$ )
.bb) *
Columnbb* 0
<bb0 1
stringbb1 7
>bb7 8
(bb8 9
typebb9 =
:bb= >
$strbb? N
,bbN O
	maxLengthbbP Y
:bbY Z
$numbb[ ^
,bb^ _
nullablebb` h
:bbh i
falsebbj o
)bbo p
,bbp q
ProviderKeycc 
=cc  !
tablecc" '
.cc' (
Columncc( .
<cc. /
stringcc/ 5
>cc5 6
(cc6 7
typecc7 ;
:cc; <
$strcc= L
,ccL M
	maxLengthccN W
:ccW X
$numccY \
,cc\ ]
nullablecc^ f
:ccf g
falsecch m
)ccm n
,ccn o
ProviderDisplayNamedd '
=dd( )
tabledd* /
.dd/ 0
Columndd0 6
<dd6 7
stringdd7 =
>dd= >
(dd> ?
typedd? C
:ddC D
$strddE T
,ddT U
nullableddV ^
:dd^ _
truedd` d
)ddd e
,dde f
UserIdee 
=ee 
tableee "
.ee" #
Columnee# )
<ee) *
stringee* 0
>ee0 1
(ee1 2
typeee2 6
:ee6 7
$stree8 G
,eeG H
nullableeeI Q
:eeQ R
falseeeS X
)eeX Y
}ff 
,ff 
constraintsgg 
:gg 
tablegg "
=>gg# %
{hh 
tableii 
.ii 

PrimaryKeyii $
(ii$ %
$strii% :
,ii: ;
xii< =
=>ii> @
newiiA D
{iiE F
xiiG H
.iiH I
LoginProvideriiI V
,iiV W
xiiX Y
.iiY Z
ProviderKeyiiZ e
}iif g
)iig h
;iih i
tablejj 
.jj 

ForeignKeyjj $
(jj$ %
namekk 
:kk 
$strkk F
,kkF G
columnll 
:ll 
xll  !
=>ll" $
xll% &
.ll& '
UserIdll' -
,ll- .
principalTablemm &
:mm& '
$strmm( 5
,mm5 6
principalColumnnn '
:nn' (
$strnn) -
,nn- .
onDeleteoo  
:oo  !
ReferentialActionoo" 3
.oo3 4
Cascadeoo4 ;
)oo; <
;oo< =
}pp 
)pp 
;pp 
migrationBuilderrr 
.rr 
CreateTablerr (
(rr( )
namess 
:ss 
$strss '
,ss' (
columnstt 
:tt 
tablett 
=>tt !
newtt" %
{uu 
UserIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
,vvY Z
RoleIdww 
=ww 
tableww "
.ww" #
Columnww# )
<ww) *
stringww* 0
>ww0 1
(ww1 2
typeww2 6
:ww6 7
$strww8 G
,wwG H
nullablewwI Q
:wwQ R
falsewwS X
)wwX Y
}xx 
,xx 
constraintsyy 
:yy 
tableyy "
=>yy# %
{zz 
table{{ 
.{{ 

PrimaryKey{{ $
({{$ %
$str{{% 9
,{{9 :
x{{; <
=>{{= ?
new{{@ C
{{{D E
x{{F G
.{{G H
UserId{{H N
,{{N O
x{{P Q
.{{Q R
RoleId{{R X
}{{Y Z
){{Z [
;{{[ \
table|| 
.|| 

ForeignKey|| $
(||$ %
name}} 
:}} 
$str}} E
,}}E F
column~~ 
:~~ 
x~~  !
=>~~" $
x~~% &
.~~& '
RoleId~~' -
,~~- .
principalTable &
:& '
$str( 5
,5 6
principalColumn
ÄÄ '
:
ÄÄ' (
$str
ÄÄ) -
,
ÄÄ- .
onDelete
ÅÅ  
:
ÅÅ  !
ReferentialAction
ÅÅ" 3
.
ÅÅ3 4
Cascade
ÅÅ4 ;
)
ÅÅ; <
;
ÅÅ< =
table
ÇÇ 
.
ÇÇ 

ForeignKey
ÇÇ $
(
ÇÇ$ %
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ E
,
ÉÉE F
column
ÑÑ 
:
ÑÑ 
x
ÑÑ  !
=>
ÑÑ" $
x
ÑÑ% &
.
ÑÑ& '
UserId
ÑÑ' -
,
ÑÑ- .
principalTable
ÖÖ &
:
ÖÖ& '
$str
ÖÖ( 5
,
ÖÖ5 6
principalColumn
ÜÜ '
:
ÜÜ' (
$str
ÜÜ) -
,
ÜÜ- .
onDelete
áá  
:
áá  !
ReferentialAction
áá" 3
.
áá3 4
Cascade
áá4 ;
)
áá; <
;
áá< =
}
àà 
)
àà 
;
àà 
migrationBuilder
ää 
.
ää 
CreateTable
ää (
(
ää( )
name
ãã 
:
ãã 
$str
ãã (
,
ãã( )
columns
åå 
:
åå 
table
åå 
=>
åå !
new
åå" %
{
çç 
UserId
éé 
=
éé 
table
éé "
.
éé" #
Column
éé# )
<
éé) *
string
éé* 0
>
éé0 1
(
éé1 2
type
éé2 6
:
éé6 7
$str
éé8 G
,
ééG H
nullable
ééI Q
:
ééQ R
false
ééS X
)
ééX Y
,
ééY Z
LoginProvider
èè !
=
èè" #
table
èè$ )
.
èè) *
Column
èè* 0
<
èè0 1
string
èè1 7
>
èè7 8
(
èè8 9
type
èè9 =
:
èè= >
$str
èè? N
,
èèN O
	maxLength
èèP Y
:
èèY Z
$num
èè[ ^
,
èè^ _
nullable
èè` h
:
èèh i
false
èèj o
)
èèo p
,
èèp q
Name
êê 
=
êê 
table
êê  
.
êê  !
Column
êê! '
<
êê' (
string
êê( .
>
êê. /
(
êê/ 0
type
êê0 4
:
êê4 5
$str
êê6 E
,
êêE F
	maxLength
êêG P
:
êêP Q
$num
êêR U
,
êêU V
nullable
êêW _
:
êê_ `
false
êêa f
)
êêf g
,
êêg h
Value
ëë 
=
ëë 
table
ëë !
.
ëë! "
Column
ëë" (
<
ëë( )
string
ëë) /
>
ëë/ 0
(
ëë0 1
type
ëë1 5
:
ëë5 6
$str
ëë7 F
,
ëëF G
nullable
ëëH P
:
ëëP Q
true
ëëR V
)
ëëV W
}
íí 
,
íí 
constraints
ìì 
:
ìì 
table
ìì "
=>
ìì# %
{
îî 
table
ïï 
.
ïï 

PrimaryKey
ïï $
(
ïï$ %
$str
ïï% :
,
ïï: ;
x
ïï< =
=>
ïï> @
new
ïïA D
{
ïïE F
x
ïïG H
.
ïïH I
UserId
ïïI O
,
ïïO P
x
ïïQ R
.
ïïR S
LoginProvider
ïïS `
,
ïï` a
x
ïïb c
.
ïïc d
Name
ïïd h
}
ïïi j
)
ïïj k
;
ïïk l
table
ññ 
.
ññ 

ForeignKey
ññ $
(
ññ$ %
name
óó 
:
óó 
$str
óó F
,
óóF G
column
òò 
:
òò 
x
òò  !
=>
òò" $
x
òò% &
.
òò& '
UserId
òò' -
,
òò- .
principalTable
ôô &
:
ôô& '
$str
ôô( 5
,
ôô5 6
principalColumn
öö '
:
öö' (
$str
öö) -
,
öö- .
onDelete
õõ  
:
õõ  !
ReferentialAction
õõ" 3
.
õõ3 4
Cascade
õõ4 ;
)
õõ; <
;
õõ< =
}
úú 
)
úú 
;
úú 
migrationBuilder
ûû 
.
ûû 
CreateIndex
ûû (
(
ûû( )
name
üü 
:
üü 
$str
üü 2
,
üü2 3
table
†† 
:
†† 
$str
†† )
,
††) *
column
°° 
:
°° 
$str
°°  
)
°°  !
;
°°! "
migrationBuilder
££ 
.
££ 
CreateIndex
££ (
(
££( )
name
§§ 
:
§§ 
$str
§§ %
,
§§% &
table
•• 
:
•• 
$str
•• $
,
••$ %
column
¶¶ 
:
¶¶ 
$str
¶¶ (
,
¶¶( )
unique
ßß 
:
ßß 
true
ßß 
,
ßß 
filter
®® 
:
®® 
$str
®® 6
)
®®6 7
;
®®7 8
migrationBuilder
™™ 
.
™™ 
CreateIndex
™™ (
(
™™( )
name
´´ 
:
´´ 
$str
´´ 2
,
´´2 3
table
¨¨ 
:
¨¨ 
$str
¨¨ )
,
¨¨) *
column
≠≠ 
:
≠≠ 
$str
≠≠  
)
≠≠  !
;
≠≠! "
migrationBuilder
ØØ 
.
ØØ 
CreateIndex
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ 2
,
∞∞2 3
table
±± 
:
±± 
$str
±± )
,
±±) *
column
≤≤ 
:
≤≤ 
$str
≤≤  
)
≤≤  !
;
≤≤! "
migrationBuilder
¥¥ 
.
¥¥ 
CreateIndex
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ 1
,
µµ1 2
table
∂∂ 
:
∂∂ 
$str
∂∂ (
,
∂∂( )
column
∑∑ 
:
∑∑ 
$str
∑∑  
)
∑∑  !
;
∑∑! "
migrationBuilder
ππ 
.
ππ 
CreateIndex
ππ (
(
ππ( )
name
∫∫ 
:
∫∫ 
$str
∫∫ "
,
∫∫" #
table
ªª 
:
ªª 
$str
ªª $
,
ªª$ %
column
ºº 
:
ºº 
$str
ºº )
)
ºº) *
;
ºº* +
migrationBuilder
ææ 
.
ææ 
CreateIndex
ææ (
(
ææ( )
name
øø 
:
øø 
$str
øø ,
,
øø, -
table
¿¿ 
:
¿¿ 
$str
¿¿ $
,
¿¿$ %
column
¡¡ 
:
¡¡ 
$str
¡¡ 
,
¡¡  
unique
¬¬ 
:
¬¬ 
true
¬¬ 
)
¬¬ 
;
¬¬ 
migrationBuilder
ƒƒ 
.
ƒƒ 
CreateIndex
ƒƒ (
(
ƒƒ( )
name
≈≈ 
:
≈≈ 
$str
≈≈ 0
,
≈≈0 1
table
∆∆ 
:
∆∆ 
$str
∆∆ $
,
∆∆$ %
column
«« 
:
«« 
$str
«« #
,
««# $
unique
»» 
:
»» 
true
»» 
)
»» 
;
»» 
migrationBuilder
   
.
   
CreateIndex
   (
(
  ( )
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ %
,
ÀÀ% &
table
ÃÃ 
:
ÃÃ 
$str
ÃÃ $
,
ÃÃ$ %
column
ÕÕ 
:
ÕÕ 
$str
ÕÕ ,
,
ÕÕ, -
unique
ŒŒ 
:
ŒŒ 
true
ŒŒ 
,
ŒŒ 
filter
œœ 
:
œœ 
$str
œœ :
)
œœ: ;
;
œœ; <
}
–– 	
	protected
““ 
override
““ 
void
““ 
Down
““  $
(
““$ %
MigrationBuilder
““% 5
migrationBuilder
““6 F
)
““F G
{
”” 	
migrationBuilder
‘‘ 
.
‘‘ 
	DropTable
‘‘ &
(
‘‘& '
name
’’ 
:
’’ 
$str
’’ (
)
’’( )
;
’’) *
migrationBuilder
◊◊ 
.
◊◊ 
	DropTable
◊◊ &
(
◊◊& '
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ (
)
ÿÿ( )
;
ÿÿ) *
migrationBuilder
⁄⁄ 
.
⁄⁄ 
	DropTable
⁄⁄ &
(
⁄⁄& '
name
€€ 
:
€€ 
$str
€€ (
)
€€( )
;
€€) *
migrationBuilder
›› 
.
›› 
	DropTable
›› &
(
››& '
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ '
)
ﬁﬁ' (
;
ﬁﬁ( )
migrationBuilder
‡‡ 
.
‡‡ 
	DropTable
‡‡ &
(
‡‡& '
name
·· 
:
·· 
$str
·· (
)
··( )
;
··) *
migrationBuilder
„„ 
.
„„ 
	DropTable
„„ &
(
„„& '
name
‰‰ 
:
‰‰ 
$str
‰‰ #
)
‰‰# $
;
‰‰$ %
migrationBuilder
ÊÊ 
.
ÊÊ 
	DropTable
ÊÊ &
(
ÊÊ& '
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ #
)
ÁÁ# $
;
ÁÁ$ %
}
ËË 	
}
ÈÈ 
}ÍÍ ∑
†E:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Migrations\20220823175412_AddedApprovedColumn.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 

Migrations $
{ 
public 

partial 
class 
AddedApprovedColumn ,
:- .
	Migration/ 8
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str  
,  !
table 
: 
$str $
,$ %
type 
: 
$str 
,  
nullable 
: 
false 
,  
defaultValue 
: 
$str %
)% &
;& '
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str $
)$ %
;% &
} 	
} 
} Á
ÅE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Models\Airline.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Models  
{ 
public 

class 
Airline 
{ 
[		 	
Required			 
]		 
[

 	
RegularExpression

	 
(

 
$str

 %
,

% &
ErrorMessage

' 3
=

4 5
$str

6 P
)

P Q
]

Q R
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
RegularExpression	 
( 
$str 8
,8 9
ErrorMessage: F
=G H
$str	I Ü
)
Ü á
]
á à
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
RegularExpression	 
( 
$str 2
,2 3
ErrorMessage4 @
=A B
$strC u
)u v
]v w
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public 
string 
? 
FromCity 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
RegularExpression	 
( 
$str 2
,2 3
ErrorMessage4 @
=A B
$strC u
)u v
]v w
[ 	
Display	 
( 
Name 
= 
$str !
)! "
]" #
public 
string 
? 
ToCity 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[   	
RegularExpression  	 
(   
$str   %
,  % &
ErrorMessage  ' 3
=  4 5
$str  6 P
)  P Q
]  Q R
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! 
)!! 
]!!  
public"" 
int"" 
Fare"" 
{"" 
get"" 
;"" 
set"" "
;""" #
}""$ %
}## 
}$$ Ö
àE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Models\ErrorViewModel.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Models  
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 â
ÑE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Models\UserStatus.cs
	namespace 	
AIRLINE_
 
. 
WEBAPP 
. 
Models  
{ 
public 

class 

UserStatus 
{ 
public 
bool 
Approved 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˙
zE:\KelltonTech\.NET training kellton\Real Training Started\TrainingByRanjeetSir\FINAL ASSESMENT\AIRLINE .WEBAPP\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA ]
)] ^
??_ a
throwb g
newh k&
InvalidOperationException	l Ö
(
Ö Ü
$str
Ü ¡
)
¡ ¬
;
¬ √
builder		 
.		 
Services		 
.		 
AddDbContext		 
<		 
AirlineDbContext		 .
>		. /
(		/ 0
options		0 7
=>		8 :
options

 
.

 
UseSqlServer

 
(

 
connectionString

 )
)

) *
)

* +
;

+ ,
builder 
. 
Services 
. 
AddSingleton 
< 

UserStatus (
>( )
() *
)* +
;+ ,
builder 
. 
Services 
. 
AddIdentity 
< 
ApplicationUser ,
,, -
IdentityRole. :
>: ;
(; <
options< C
=>D F
optionsG N
.N O
SignInO U
.U V#
RequireConfirmedAccountV m
=n o
falsep u
)u v
. 
AddDefaultUI 
( 
) 
. $
AddEntityFrameworkStores ,
<, -
AirlineDbContext- =
>= >
(> ?
)? @
;@ A
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
! 
app 
. 	
Environment	 
. 
IsDevelopment "
(" #
)# $
)$ %
{ 
app 
. 
UseExceptionHandler 
( 
$str )
)) *
;* +
app 
. 
UseHsts 
( 
) 
; 
} 
app!! 
.!! 
UseHttpsRedirection!! 
(!! 
)!! 
;!! 
app"" 
."" 
UseStaticFiles"" 
("" 
)"" 
;"" 
app$$ 
.$$ 

UseRouting$$ 
($$ 
)$$ 
;$$ 
app%% 
.%% 
UseAuthentication%% 
(%% 
)%% 
;%% 
;%% 
app'' 
.'' 
UseAuthorization'' 
('' 
)'' 
;'' 
app)) 
.)) 
MapControllerRoute)) 
()) 
name** 
:** 	
$str**
 
,** 
pattern++ 
:++ 
$str++ 5
)++5 6
;++6 7
app-- 
.-- 
MapRazorPages-- 
(-- 
)-- 
;-- 
app// 
.// 
Run// 
(// 
)// 	
;//	 

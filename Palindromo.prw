#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} Palindromo
Atividade: Teste Palindromo (Automated Software Testing)
@type function
@version P12
@author Odimar Barbosa
@since  05/07/2022
@return cRet Resultado do teste
/*/

User Function Palindromo()

Local aString := {}
Local nX      := 0
Local cTest   := ''

Private cStrInv := ''

AADD(aString, 'Rotator')
AADD(aString, 'bob')
AADD(aString, 'madam')
AADD(aString, 'mAlAyAlam')
AADD(aString, '1')
AADD(aString, 'Able was I, ere I saw Elba')
AADD(aString, 'Madam I’m Adam')
AADD(aString, 'Step on no pets.')
AADD(aString, 'Top spot!')
AADD(aString, '02/02/2020')
AADD(aString, 'Socorram-me subi no ônibus em marrocos')
AADD(aString, 'xyz')
AADD(aString, 'elephant')
AADD(aString, 'Country')
AADD(aString, 'Top . post!')
AADD(aString, 'Wonderful-fool')
AADD(aString, 'Wild imagination!')

For nX := 1 To Len(aString)
    cTest := fTestPalind(aString[nX])
    MsgInfo('String: '   + aString[nX] + CRLF +;
            'Teste : '   + cTest, 'Resultado')
    cStrInv := ''
Next

Return


//+-------------------+
//| Teste das Strings |
//+-------------------+
Static Function fTestPalind(cString)

Local nX        := 0
Local cRet      := ''

cString := FWNoAccent(cString)
cString := Upper(cString)

cString := StrTran(cString, '’', '')
cString := StrTran(cString, ' ', '')
cString := StrTran(cString, ',', '')
cString := StrTran(cString, '.', '')
cString := StrTran(cString, '/', '')
cString := StrTran(cString, '-', '')
cString := StrTran(cString, '!', '')
cString := StrTran(cString, '!', '')

For nX := Len(cString) To 1 Step -1
    cStrInv += SubStr(cString, nX, 1)
Next

cRet := IF(cString == cStrInv, 'VERDADEIRO', 'FALSO')

Return(cRet)

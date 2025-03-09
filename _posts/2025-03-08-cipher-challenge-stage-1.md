## Stage 1 - Simon Singh Cipher Challenge

I recently came across the Simon Singh Cipher Challenge, which was wrapped up in 2000 after over a year of people working on it. 
Solving ciphers has always been interesting to me, so I figured I would give some of the stages a shot!

The first stage starts shows the following text:
<br>
<h3>Monalphabetic Substitution Cipher</h3>
<br>
BT JPX RMLX PCUV AMLX ICVJP IBTWXVR CI M LMT'R PMTN, MTN YVCJX CDXV MWMBTRJ JPX AMTNGXRJBAH UQCT JPX QGMRJXV CI JPX YMGG CI JPX HBTW'R QMGMAX; MTN JPX HBTW RMY JPX QMVJ CI JPX PMTN JPMJ YVCJX. JPXT JPX HBTW'R ACUTJXTMTAX YMR APMTWXN, MTN PBR JPCUWPJR JVCUFGXN PBL, RC JPMJ JPX SCBTJR CI PBR GCBTR YXVX GCCRXN, MTN PBR HTXXR RLCJX CTX MWMBTRJ MTCJPXV. JPX HBTW AVBXN MGCUN JC FVBTW BT JPX MRJVCGCWXVR, JPX APMGNXMTR, MTN JPX RCCJPRMEXVR. MTN JPX HBTW RQMHX, MTN RMBN JC JPX YBRX LXT CI FMFEGCT, YPCRCXDXV RPMGG VXMN JPBR YVBJBTW, MTN RPCY LX JPX BTJXVQVXJMJBCT JPXVXCI, RPMGG FX AGCJPXN YBJP RAMVGXJ, MTN PMDX M APMBT CI WCGN MFCUJ PBR TXAH, MTN RPMGG FX JPX JPBVN VUGXV BT JPX HBTWNCL. JPXT AMLX BT MGG JPX HBTW'R YBRX LXT; FUJ JPXE ACUGN TCJ VXMN JPX YVBJBTW, TCV LMHX HTCYT JC JPX HBTW JPX BTJXVQVXJMJBCT JPXVXCI. JPXT YMR HBTW FXGRPMOOMV WVXMJGE JVCUFGXN, MTN PBR ACUTJXTMTAX YMR APMTWXN BT PBL, MTN PBR GCVNR YXVX MRJCTBRPXN. TCY JPX KUXXT, FE VXMRCT CI JPX YCVNR CI JPX HBTW MTN PBR GCVNR, AMLX BTJC JPX FMTKUXJ PCURX; MTN JPX KUXXT RQMHX MTN RMBN, C HBTW, GBDX ICVXDXV; GXJ TCJ JPE JPCUWPJR JVCUFGX JPXX, TCV GXJ JPE ACUTJXTMTAX FX APMTWXN; JPXVX BR M LMT BT JPE HBTWNCL, BT YPCL BR JPX RQBVBJ CI JPX PCGE WCNR; MTN BT JPX LAMER CI JPE IMJPXV GBWPJ MTN UTNXVRJMTNBTW MTN YBRNCL, GBHX JPX YBRNCL CI JPX WCNR, YMR ICUTN BT PBL; YPCL JPX HBTW TXFUAPMNTXOOMV JPE IMJPXV, JPX HBTW, B RME, JPE IMJPXV, LMNX LMRJXV CI JPX LMWBABMTR, MRJVCGCWXVR, APMGNXMTR, MTN RCCJPRMEXVR; ICVMRLUAP MR MT XZAXGGXTJ RQBVBJ, MTN HTCYGXNWX, MTN UTNXVRJMTNBTW, BTJXVQVXJBTW CI NVXMLR, MTN RPCYBTW CI PMVN RXTJXTAXR, MTN NBRRCGDBTW CI NCUFJR, YXVX ICUTN BT JPX RMLX NMTBXG, YPCL JPX HBTW TMLXN FXGJXRPMOOMV; TCY GXJ NMTBXG FX AMGGXN, MTN PX YBGG RPCY JPX BTJXVQVXJMJBCT. JPX IBVRJ ACNXYCVN BR CJPXGGC.
<br>
<br>
Because we are told we are dealing with a "Monalphabetic Substitution Cipher," we know the first stage is likely simple. I naïvely assumed it was a basic substitution cipher in English, and 
immediately wrote some code to check the frequency of the letters. The reason is simple: certain letters occur more often than other letters.
<br>
<br>
The following graph shows the average frequency of English letters throughout English texts vs. the frequency of letters in the encypted text:
<br>
<a href="https://en.m.wikipedia.org/wiki/File:English_letter_frequency_%28frequency%29.svg"><img width="781" alt="Screenshot 2025-03-08 at 10 24 44 PM" src="https://github.com/user-attachments/assets/80ec5dfc-7853-4d39-8de0-0e540aa96a78"/></a>

With this, we can make some assumptions and see if they play out. I first substituted 'X' for 'E' and 'J' for 'T'. Then, seeing that the cipher text uses apostrophes, I guessed that 'R' is actually
'S'. From here, it was a matter of more educated guesses and seeing if I could derive common words (for example, 'M' was a standalone letter, so I guessed it was 'A').

I finished checking everything using C++:
```cpp
#include <iostream>
#include <fstream>
#include <map>
#include <cctype>

int main()
{
    std::map<char, char> letter_map;
    for(char c = 'A'; c <= 'Z'; ++c)
    {
        letter_map[c] = c;
    }

    // adjusting substitution values
    letter_map['A'] = 'C';
    letter_map['B'] = 'I';
    letter_map['C'] = 'O';
    letter_map['D'] = 'V';
    letter_map['E'] = 'Y';
    letter_map['F'] = 'B';
    letter_map['G'] = 'L';
    letter_map['H'] = 'K';
    letter_map['I'] = 'F';
    letter_map['J'] = 'T';
    letter_map['K'] = 'Q';
    letter_map['L'] = 'M';
    letter_map['M'] = 'A';
    letter_map['N'] = 'D';
    letter_map['P'] = 'H';
    letter_map['Q'] = 'P';
    letter_map['R'] = 'S';
    letter_map['S'] = 'J';
    letter_map['T'] = 'N';
    letter_map['V'] = 'R';
    letter_map['W'] = 'G';
    letter_map['X'] = 'E';
    letter_map['Y'] = 'W';
    letter_map['Z'] = 'X';
    

    std::ifstream infile("cipher.txt");
    if(!infile)
    {
        std::cerr << "Failed to open file\n";
        return 1;
    }
    std::ofstream outfile("decoded.txt");
    if(!outfile)
    {
        std::cerr << "Failed to open file\n";
        return 1;
    }

    char ch;
    while(infile.get(ch))
    {
        if(std::isalpha(ch))
        {
            ch = std::toupper(ch);
            outfile << letter_map[ch];
        }
        else
        {
            outfile << ch;
        }
    }
    infile.close();
    outfile.close();
    return 0;
}
```
This gives us the final answer!
<br>
<br>

IN THE SAME HOUR CAME FORTH FINGERS OF A MAN'S HAND, AND WROTE OVER AGAINST THE CANDLESTICK UPON THE PLASTER OF THE WALL OF THE KING'S PALACE; AND THE KING SAW THE PART OF THE HAND THAT WROTE. THEN THE KING'S COUNTENANCE WAS CHANGED, AND HIS THOUGHTS TROUBLED HIM, SO THAT THE JOINTS OF HIS LOINS WERE LOOSED, AND HIS KNEES SMOTE ONE AGAINST ANOTHER. THE KING CRIED ALOUD TO BRING IN THE ASTROLOGERS, THE CHALDEANS, AND THE SOOTHSAYERS. AND THE KING SPAKE, AND SAID TO THE WISE MEN OF BABYLON, WHOSOEVER SHALL READ THIS WRITING, AND SHOW ME THE INTERPRETATION THEREOF, SHALL BE CLOTHED WITH SCARLET, AND HAVE A CHAIN OF GOLD ABOUT HIS NECK, AND SHALL BE THE THIRD RULER IN THE KINGDOM. THEN CAME IN ALL THE KING'S WISE MEN; BUT THEY COULD NOT READ THE WRITING, NOR MAKE KNOWN TO THE KING THE INTERPRETATION THEREOF. THEN WAS KING BELSHAOOAR GREATLY TROUBLED, AND HIS COUNTENANCE WAS CHANGED IN HIM, AND HIS LORDS WERE ASTONISHED. NOW THE QUEEN, BY REASON OF THE WORDS OF THE KING AND HIS LORDS, CAME INTO THE BANQUET HOUSE; AND THE QUEEN SPAKE AND SAID, O KING, LIVE FOREVER; LET NOT THY THOUGHTS TROUBLE THEE, NOR LET THY COUNTENANCE BE CHANGED; THERE IS A MAN IN THY KINGDOM, IN WHOM IS THE SPIRIT OF THE HOLY GODS; AND IN THE MCAYS OF THY FATHER LIGHT AND UNDERSTANDING AND WISDOM, LIKE THE WISDOM OF THE GODS, WAS FOUND IN HIM; WHOM THE KING NEBUCHADNEOOAR THY FATHER, THE KING, I SAY, THY FATHER, MADE MASTER OF THE MAGICIANS, ASTROLOGERS, CHALDEANS, AND SOOTHSAYERS; FORASMUCH AS AN EXCELLENT SPIRIT, AND KNOWLEDGE, AND UNDERSTANDING, INTERPRETING OF DREAMS, AND SHOWING OF HARD SENTENCES, AND DISSOLVING OF DOUBTS, WERE FOUND IN THE SAME DANIEL, WHOM THE KING NAMED BELTESHAOOAR; NOW LET DANIEL BE CALLED, AND HE WILL SHOW THE INTERPRETATION. THE FIRST CODEWORD IS OTHELLO
<br>
<br>
This is from the KJV Daniel 5:5-12, and the codeword is **OTHELLO**

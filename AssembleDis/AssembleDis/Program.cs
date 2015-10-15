using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace AssembleDis
{
    class Program
    {

        const int bankCount = 0x40;

        static void Main(string[] args)
        {
            string[][] files = new string[bankCount][];

            for (int i = 0; i < bankCount; i++)
            {
                files[i] = File.ReadAllLines("../../../../Disassembly/b" + i.ToString("X2") + ".asm");
            }

            int filecount = 0;
            foreach (string[] file in files)
            {
                files[filecount] = FormatAssembly(files[filecount]);
                File.WriteAllLines("../../../../Assembly/b" + filecount.ToString("X2") + ".asm", files[filecount]);
                filecount++;
            }
        }

        private static string[] FormatAssembly(string[] lines)
        {
            string[] newlines = new string[lines.Length];
            int i = 0;

            foreach(string line in lines)
            {
                //Remove the bytes
                newlines[i++] = Regex.Replace(line, ":        [0-9A-f]{2} .. .. ..   ", ":        ");

                //Find long addressing modes accessing the ROM, and stick a .l
                //([0-9A-F][0-9A-F] [0-9A-F][0-9A-F] [0-9A-F][0-9A-F] [0-9A-F][0-9A-F] )(.*?)(CMP|CP[XY]|LD[AXY]|ST[AXY]|ORA|AND|ADC|SBC)( DATA| PNTR)
                //\1\2\3.l\4

                //Find a ,y addressing mode with label and force to be 16-bit
                //LDA DATA_11(.*,y)
                //LDA.w DATA_11\1

                //Find all ROM accesses (ctrl+f in notepad++)
                //       (CMP|CP[XY]|LD[AXY]|ORA|AND|EOR|ADC|SBC|BIT|TSB|TRB)( \$)([8-9A-F][0-9A-F]{3})
                //replace with             $1 DATA_05$3

            }

            return newlines;
        }
    }
}

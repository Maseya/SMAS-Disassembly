using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Rip.Properties;

internal static class Program
{
    private static readonly List<(int address, int size)> Tables =
        new List<(int address, int size)>()
        {
                (0x018000, 0x8000),
                (0x028000, 0x1000),
                (0x029000, 0x1000),
                (0x02A000, 0x2000),
                (0x02C000, 0x0800),
                (0x02C800, 0x0200),
                (0x02CA00, 0x0200),
                (0x02F000, 0x1000),
                (0x068000, 0x2000),
                (0x06A000, 0x2000),
                (0x06C000, 0x4000),
                (0x078000, 0x4000),
                (0x07C000, 0x3C00),
                (0x07FC00, 0x00A0),
                (0x07FCA0, 0x001C),
                (0x07FCBC, 0x0344),
                (0x088000, 0x1000),
                (0x089000, 0x0800),
                (0x089800, 0x0800),
                (0x08A000, 0x1000),
                (0x08B000, 0x0800),
                (0x08B800, 0x0800),
                (0x08C000, 0x1000),
                (0x08D000, 0x1000),
                (0x08E000, 0x1000),
                (0x08F000, 0x1000),
                (0x098000, 0x1000),
                (0x099000, 0x1000),
                (0x09A000, 0x2000),
                (0x09C000, 0x1000),
                (0x09D000, 0x1000),
                (0x09E000, 0x0800),
                (0x09E800, 0x0800),
                (0x09F000, 0x0800),
                (0x09F800, 0x0800),
                (0x0A8000, 0x8000),
                (0x0B8000, 0x0074),
                (0x0B8074, 0x7F8C),
                (0x0C8000, 0x5000),
                (0x0CD000, 0x2800),
                (0x0CF800, 0x0800),
                (0x108000, 0x8000),
                (0x168000, 0x4000),
                (0x16C000, 0x4000),
                (0x178000, 0x1000),
                (0x179000, 0x7000),
                (0x188000, 0x4000),
                (0x18C000, 0x0800),
                (0x18C800, 0x3800),
                (0x198000, 0x1800),
                (0x199800, 0x3000),
                (0x19C800, 0x1800),
                (0x19E000, 0x2000),
                (0x1A8000, 0x8000),
                (0x1B8000, 0x4000),
                (0x1BC000, 0x4000),
                (0x1C8000, 0x3E00),
                (0x1CBE00, 0x4200),
                (0x1D8000, 0x1000),
                (0x1D9000, 0x1000),
                (0x1DA000, 0x1000),
                (0x1DB000, 0x5000),
                (0x1E8000, 0x8000),
                (0x1F8000, 0x4000),
                (0x1FC000, 0x4000),
                (0x2B8000, 0x8000),
                (0x2C8000, 0x5800),
                (0x2CD800, 0x1000),
                (0x2CE800, 0x1800),
                (0x2D8000, 0x8000),
                (0x2E8000, 0x8000),
                (0x2F8000, 0x8000),
                (0x308000, 0x3800),
                (0x30B800, 0x4800),
                (0x318000, 0x2000),
                (0x31A000, 0x1000),
                (0x31B000, 0x5000),
                (0x328000, 0x0800),
                (0x328800, 0x0800),
                (0x329000, 0x7000),
                (0x338000, 0x3000),
                (0x33B000, 0x5000),
                (0x348000, 0x2800),
                (0x34A800, 0x2800),
                (0x34D000, 0x3000),
                (0x358000, 0x6000),
                (0x35E000, 0x2000),
                (0x368000, 0x8000),
                (0x378000, 0x3000),
                (0x37B000, 0x3000),
                (0x37E000, 0x1000),
                (0x37F000, 0x1000),
                (0x388000, 0x2C00),
                (0x38AC00, 0x0C00),
                (0x38B800, 0x0800),
                (0x38C000, 0x4000),
                (0x398000, 0x4000),
                (0x39C000, 0x4000),
                (0x3A8000, 0x3000),
                (0x3AB000, 0x5000),
                (0x3B8000, 0x2251),
                (0x3BA251, 0x5DAF),
                (0x3C8000, 0x0800),
                (0x3C8800, 0x0040),
                (0x3C8840, 0x0060),
                (0x3C88A0, 0x0020),
                (0x3C88C0, 0x0020),
                (0x3C88E0, 0x0020),
                (0x3C8900, 0x0020),
                (0x3C8920, 0x0020),
                (0x3C8940, 0x0020),
                (0x3C8960, 0x0020),
                (0x3C8980, 0x0020),
                (0x3C89A0, 0x0020),
                (0x3C89C0, 0x0020),
                (0x3C89E0, 0x0020),
                (0x3C8A00, 0x0020),
                (0x3C8A20, 0x0020),
                (0x3C8A40, 0x0020),
                (0x3C8A60, 0x0020),
                (0x3C8A80, 0x0020),
                (0x3C8AA0, 0x0020),
                (0x3C8AC0, 0x0020),
                (0x3C8AE0, 0x0020),
                (0x3C8B00, 0x0020),
                (0x3C8B20, 0x0020),
                (0x3C8B40, 0x0020),
                (0x3C8B60, 0x0020),
                (0x3C8B80, 0x0020),
                (0x3C8BA0, 0x0020),
                (0x3C8BC0, 0x0020),
                (0x3C8BE0, 0x0020),
                (0x3C8C00, 0x0200),
                (0x3C8E00, 0x0200),
                (0x3C9000, 0x0160),
                (0x3C9160, 0x0160),
                (0x3C92C0, 0x0160),
                (0x3C9420, 0x00A0),
                (0x3C94C0, 0x00C0),
                (0x3C9580, 0x0160),
                (0x3C96E0, 0x00A0),
                (0x3C9780, 0x00C0),
                (0x3C9840, 0x0160),
                (0x3C99A0, 0x0160),
                (0x3C9B00, 0x0160),
                (0x3C9C60, 0x0020),
                (0x3C9C80, 0x0010),
                (0x3C9C90, 0x0010),
                (0x3C9CA0, 0x0010),
                (0x3C9CB0, 0x0010),
                (0x3C9CC0, 0x0010),
                (0x3C9CD0, 0x0010),
                (0x3C9CE0, 0x0010),
                (0x3C9CF0, 0x0010),
                (0x3C9D00, 0x0010),
                (0x3C9D10, 0x0010),
                (0x3C9D20, 0x0010),
                (0x3C9D30, 0x0010),
                (0x3C9D40, 0x0010),
                (0x3C9D50, 0x0010),
                (0x3C9D60, 0x0020),
                (0x3C9D80, 0x0080),
                (0x3C9E00, 0x0080),
                (0x3C9E80, 0x0080),
                (0x3C9F00, 0x0080),
                (0x3C9F80, 0x0080),
                (0x3CA000, 0x0080),
                (0x3CA080, 0x0080),
                (0x3CA100, 0x0020),
                (0x3CA120, 0x0280),
                (0x3CA3A0, 0x0060),
                (0x3CA400, 0x003E),
                (0x3CA43E, 0x0020),
                (0x3CA45E, 0x0022),
                (0x3CA480, 0x0040),
                (0x3CA4C0, 0x0040),
                (0x3CA500, 0x0100),
                (0x3CA600, 0x0040),
                (0x3CA640, 0x0040),
                (0x3CA680, 0x0040),
                (0x3CA6C0, 0x0040),
                (0x3CA700, 0x0040),
                (0x3CA740, 0x0040),
                (0x3CA780, 0x0040),
                (0x3CA7C0, 0x0040),
                (0x3CA800, 0x0040),
                (0x3CA840, 0x0040),
                (0x3CA880, 0x0040),
                (0x3CA8C0, 0x0040),
                (0x3CA900, 0x0020),
                (0x3CA920, 0x0020),
                (0x3CA940, 0x0040),
                (0x3CA980, 0x0040),
                (0x3CA9C0, 0x0040),
                (0x3CAA00, 0x0040),
                (0x3CAA40, 0x0040),
                (0x3CAA80, 0x0040),
                (0x3CAAC0, 0x0040),
                (0x3CAB00, 0x0040),
                (0x3CAB40, 0x0040),
                (0x3CAB80, 0x0040),
                (0x3CABC0, 0x0040),
                (0x3CAC00, 0x0100),
                (0x3CAD00, 0x0100),
                (0x3CAE00, 0x0100),
                (0x3CAF00, 0x0100),
                (0x3CB000, 0x0100),
                (0x3CB100, 0x0100),
                (0x3CB200, 0x0100),
                (0x3CB300, 0x0100),
                (0x3CB400, 0x4C00),
                (0x3D8000, 0x2000),
                (0x3DA000, 0x0800),
                (0x3DA800, 0x2400),
                (0x3DCC00, 0x1400),
                (0x3DE000, 0x1000),
                (0x3DF000, 0x1000),
                (0x3E8000, 0x8000),
                (0x3F8000, 0x8000),
        };

    private static void Main(string[] args)
    {
        if (args.Length != 1)
        {
            Console.WriteLine(Resources.Usage);
            Environment.Exit(-1);
        }

        var path = args[0];
        Console.WriteLine($"Reading ROM \"{path}\"");
        var rom = File.ReadAllBytes(path);
        var header = rom.Length & 0x7FFF;
        if (rom.Length != 0x200000 && rom.Length != 0x200200)
        {
            Console.WriteLine(Resources.ErrorBadRom);
            Environment.Exit(-2);
        }

        Tables.Sort((x, y) => x.address - y.address);

        foreach ((var address, var size) in Tables)
        {
            var bank = address >> 0x10;
            var word = address & 0x7FFF;
            var index = (bank << 0x0F) | word;
            var table = new byte[size];
            var game = bank < 3
                ? "SMAS"
                : bank < 0x0D
                ? "SMB1"
                : bank < 0x11
                ? "SMB2J"
                : bank < 0x20
                ? "SMB2U"
                : "SMB3";

            var dir = $"Assembly/{game}/data/b{bank:X2}";
            if (!Directory.Exists(dir))
            {
                Console.WriteLine($"Creating directory \"{dir}\"");
                Console.WriteLine();
                Directory.CreateDirectory(dir);
            }

            Console.WriteLine("Creating Table");
            Console.WriteLine($"Address: ${address:X6}");
            Console.WriteLine($"Size: ${size:X4}");
            Console.WriteLine();
            Array.Copy(
                sourceArray: rom,
                sourceIndex: index + header,
                destinationArray: table,
                destinationIndex: 0,
                length: size);

            var name = $"DATA_{address:X6}-{size:X4}.bin";
            var dest = $@"{dir}\{name}";
            Console.WriteLine($"Writing table to \"{dest}\"");
            Console.WriteLine();
            File.WriteAllBytes(dest, table);
        }

        Console.WriteLine("All tables complete!");
    }
}

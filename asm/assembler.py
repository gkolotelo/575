"""
The MIT License (MIT)
Copyright (c) 2016 Alexandre Seidy and Guilherme Kolotelo

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
"""

# --------------------------------------------------
# -- Laboratorio de Circuitos Logicos - Turma A   --
# --------------------------------------------------
# -- 135964 Guilherme Kairalla Kolotelo           --
# -- 137943 Alexandre Seidy Ioshisaqui            --
# --------------------------------------------------
# -- Laboratorio 10: Projeto: Processador simples --
# --------------------------------------------------

import sys
import time

def imToBin(immediate):
    if '0x' in immediate:
        return "%016d" % int(bin(int(immediate, 16))[2:])
    elif '0b' in immediate:
        return "%016d" % int(immediate[2:])
    elif '0d' in immediate:
        return "%016d" % int(bin(immediate)[2:])
    else: pass

helpfile = "The ES575 Assembler Rev. 0.1\n" \
           + "Developed by:\n" \
           + "    Alexandre Seidy Ioshisaqui, and\n" \
           + "    Guilherme Kairalla Kolotelo\n\n" \
           + "Usage: python assembler.py [input_file.es575] [output_file(.bin/.mif)] [options]\n" \
           + "Options:\n" \
           + "    -h --help : Help file\n" \
           + "    -m --mif  : Output Memory Initialization File format (.mif)\n\n" \
           + "output_file must be indicated! Tested on Python 2.7.x "

# file
try:
    in_filename = sys.argv[1]
    out_filename = sys.argv[2]
except:
    print helpfile
    sys.exit(0)

try:
    flags = sys.argv[3]
except:
    flags = None

if flags not in ['-m', '--mif', None]:
    print helpfile

in_file = open(in_filename, 'r')
out_file = open(out_filename, 'w')
code = in_file.readlines()
bin_file = ''
comment_file = ''

# strutures
native_instructions = {
    "mv"    : "0000",
    "mvi"   : "0001",
    "add"   : "0010",
    "sub"   : "0011",
    "ld"    : "0100",
    "st"    : "0101",
    "mvnz"  : "0110",
    "and"   : "0111",
    "or"    : "1000",
    "ls"    : "1001",
    "rs"    : "1010",
    "rotl"  : "1011",
    "rotr"  : "1100"
}

pseudo_instructions = [
    "jmp",
    "bne"
]

registers = {
    "r0": "000",
    "r1": "001",
    "r2": "010",
    "r3": "011",
    "r4": "100",
    "r5": "101",
    "r6": "110",
    "r7": "111",
    "pc": "111"
}

# Label indexing
# for line in code:

time_start = time.time()
# Assembly
for line in code:
    # Binary instruction format
    # (oooo xxx yyy ffffff)

    line = line.lower()
    inst = line.replace(',', ' ').split()

    if (len(inst) == 2):
        [op, rx] = inst
        ry = "r0"
    elif(len(inst) == 3):
        [op, rx, ry] = inst
    elif(len(inst) == 4):
        [op, rx, ry, rb] = inst
    else:
        print "Invalid instruction at: %s" % line
        sys.exit(0)

    if op in native_instructions:
        comment_line = line[:-1]
        if op == "mvi":
            if '#' not in ry:
                print "Invalid mvi at: %s" % line
            bin_line = native_instructions["mvi"] + registers[rx] + "000000000\n"
            bin_line += imToBin(ry[1:])
            comment_line += "\n"
        else:
            bin_line = native_instructions[op]+registers[rx]+registers[ry]+"000000"

    elif op in pseudo_instructions:
        if op == "jmp":
            # mv pc, rx
            comment_line = "mv r7, " + rx
            bin_line = native_instructions["mv"] + registers["pc"] + registers[rx] + "000000"
        elif op == "bne":
            # sub rx, ry
            # mvnz pc, rb
            comment_line = "sub " + rx + ", " + ry
            bin_line = native_instructions["sub"] + registers[rx] + registers[ry] + "000000\n"
            comment_line = "mvnz r7, " + rb
            bin_line += native_instructions["mvnz"] + registers["pc"] + registers[rb]
        else:
            print "Invalid pseudo-instruction at: %s" % line
            sys.exit(0)

    else:
        print "Invalid instruction at: %s" % line
        sys.exit(0)
    # Concatenate instruction
    bin_file += bin_line + '\n'
    comment_file += comment_line + '\n'

bin_file = bin_file[:-1]
comment_file = comment_file[:-1]

time_total = time.time() - time_start

print "Process completed! Total time: %f" % time_total

# Writing output file
timestamp = time.strftime("%d/%m/%y %H:%M:%S", time.localtime())
file_header = '-- Generated by the ES575 Assembler on %s' % timestamp
file_header = file_header + '\n-- The MIT License (MIT)\n' \
                          + '-- Copyright (c) 2016 Alexandre Seidy and Guilherme Kolotelo\n'\
                          + '-- \n'\
                          + '-- Permission is hereby granted, free of charge, to any person obtaining a\n'\
                          + '-- copy of this software and associated documentation files (the "Software"),\n'\
                          + '-- to deal in the Software without restriction, including without limitation\n'\
                          + '-- the rights to use, copy, modify, merge, publish, distribute, sublicense,\n'\
                          + '-- and/or sell copies of the Software, and to permit persons to whom the\n'\
                          + '-- Software is furnished to do so, subject to the following conditions:\n'\
                          + '-- \n'\
                          + '-- The above copyright notice and this permission notice shall be included in\n'\
                          + '-- all copies or substantial portions of the Software.\n'\
                          + '-- \n'\
                          + '-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n'\
                          + '-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n'\
                          + '-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n'\
                          + '-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n'\
                          + '-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\n'\
                          + '-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER\n'\
                          + '-- DEALINGS IN THE SOFTWARE.\n'\
                          + '--------------------------------------------------------------------------------\n\n\n'

if flags in ["--mif", "-m"]:
    mif_file = file_header
    mif_header = "WIDTH=16;\nDEPTH=128;\nADDRESS_RADIX=DEC;\nDATA_RADIX=BIN;\nCONTENT\nBEGIN\n\n\n"
    mif_file = mif_file + mif_header
    counter = 0
    for i, c in zip(bin_file.split('\n'), comment_file.split('\n')):
        mif_file += "%02d : %s; -- %s\n" % (counter, i, c)
        counter = counter + 1
    out_file.write(mif_file)
else:
    out_file.write(bin_file)

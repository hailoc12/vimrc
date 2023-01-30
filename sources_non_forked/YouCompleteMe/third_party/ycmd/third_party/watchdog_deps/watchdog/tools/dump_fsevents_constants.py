# coding: utf-8

import sys
from io import StringIO

import FSEvents

header = """# coding: utf-8
# File generated by watchdog/scripts/dump_mac_constants.py

class Constants:
"""


def dump_constants(header):
    output = StringIO()
    output.write(header)

    for attribute in dir(FSEvents):
        value = getattr(FSEvents, attribute)
        if attribute.startswith('k') and isinstance(value, int):
            output.write("    %s = %s\n" % (attribute, hex(value)))
    content = output.getvalue()
    output.close()
    return content


def write_constants_to_file(filename):
    content = dump_constants(header)
    with open(filename, 'wb') as f:
        f.write(content)


if __name__ == "__main__":
    if len(sys.argv) > 1:
        output_file = sys.argv[1]
    else:
        print("Usage: scripts/dump_mac_constants.py <output_file>")
        sys.exit(1)

    write_constants_to_file(output_file)

import pexpect
import sys

inputs =[

    ('2013-04-15 15:57:49	-->	user (~xyz@abcxyz.net] has joined #channel"',
     ['join',
      '2013-04-15 15:57:49',
      'user']),

    ('2013-04-15 15:57:49	--	Topic for #channel is "abc xzy"',
     ['join',
      '2013-04-15 15:57:49',
      'user']),

    ('2013-04-15 15:58:32	user	hello world',
     ['chat',
      '2013-04-15 15:58:32',
      'user',
      'hello world']),

    ('2013-04-15 15:59:39	other	hello. goodbye.',
     ['chat',
      '2013-04-15 15:59:39',
      'other',
      'hello. goodbye.']),

    ('2013-04-15 16:01:09	<--	other [~other@xyzabc.de] has quit [bye]',
     ['chat',
      '2013-04-15 16:01:09',
      'other',
      'hello. goodbye.']),
]


if __name__=="__main__":
    program = sys.argv[1] if len[sys.argv > 1] else "./parser"
    test( program )

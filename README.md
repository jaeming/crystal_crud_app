## sugar

### db

make this binary executable `chmod +x bin/micrate` and adjust database url there (adjust the one in `models/post` too).

then:
`bin/micrate create create_posts`
`bin/micrate up`

### do some crud stuff cli style:

`crystal ./src/sugar.cr -t Index`
`crystal ./src/sugar.cr -t Index -p "{\"published\":true}"`
`crystal ./src/sugar.cr -t Create -p "{\"title\":\"Crystal is good\",\"body\":\"shards there are\",\"published\":true}"`

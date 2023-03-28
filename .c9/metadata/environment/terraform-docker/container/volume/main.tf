{"filter":false,"title":"main.tf","tooltip":"/terraform-docker/container/volume/main.tf","undoManager":{"mark":14,"position":14,"stack":[[{"start":{"row":0,"column":0},"end":{"row":16,"column":1},"action":"insert","lines":["resource \"docker_volume\" \"container_volume\" {","  count = length(var.volumes_in)","  name  = \"${var.name_in}-${count.index}-volume\"","  lifecycle {","    prevent_destroy = false","  }","  provisioner \"local-exec\" {","    when       = destroy","    command    = \"mkdir ${path.cwd}/../backup/\"","    on_failure = continue","  }","  provisioner \"local-exec\" {","    when       = destroy","    command    = \"sudo tar -czvf ${path.cwd}/../backup/${self.name}.tar.gz ${self.mountpoint}/\"","    on_failure = fail","  }","}"],"id":1}],[{"start":{"row":1,"column":10},"end":{"row":1,"column":32},"action":"remove","lines":["length(var.volumes_in)"],"id":2},{"start":{"row":1,"column":10},"end":{"row":1,"column":11},"action":"insert","lines":["v"]},{"start":{"row":1,"column":11},"end":{"row":1,"column":12},"action":"insert","lines":["a"]},{"start":{"row":1,"column":12},"end":{"row":1,"column":13},"action":"insert","lines":["r"]},{"start":{"row":1,"column":13},"end":{"row":1,"column":14},"action":"insert","lines":["."]},{"start":{"row":1,"column":14},"end":{"row":1,"column":15},"action":"insert","lines":["v"]},{"start":{"row":1,"column":15},"end":{"row":1,"column":16},"action":"insert","lines":["o"]},{"start":{"row":1,"column":16},"end":{"row":1,"column":17},"action":"insert","lines":["l"]},{"start":{"row":1,"column":17},"end":{"row":1,"column":18},"action":"insert","lines":["u"]},{"start":{"row":1,"column":18},"end":{"row":1,"column":19},"action":"insert","lines":["m"]}],[{"start":{"row":1,"column":14},"end":{"row":1,"column":19},"action":"remove","lines":["volum"],"id":3},{"start":{"row":1,"column":14},"end":{"row":1,"column":26},"action":"insert","lines":["volume_count"]}],[{"start":{"row":2,"column":10},"end":{"row":2,"column":48},"action":"remove","lines":["\"${var.name_in}-${count.index}-volume\""],"id":4}],[{"start":{"row":2,"column":10},"end":{"row":2,"column":12},"action":"insert","lines":["\"\""],"id":5}],[{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"insert","lines":["$"],"id":6},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["v"]},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["a"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"insert","lines":["r"]}],[{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"remove","lines":["r"],"id":7},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["a"]},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"remove","lines":["v"]}],[{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["{"],"id":8},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["v"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"insert","lines":["a"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"insert","lines":["r"]},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"insert","lines":["."]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["v"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["o"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["l"]}],[{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["u"],"id":9},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["m"]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["e"]},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"insert","lines":["_"]},{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"insert","lines":["n"]},{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"insert","lines":["a"]}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":26},"action":"remove","lines":["volume_na"],"id":10},{"start":{"row":2,"column":17},"end":{"row":2,"column":28},"action":"insert","lines":["volume_name"]}],[{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"insert","lines":["}"],"id":11}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":["-"],"id":12},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":["$"]}],[{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["{"],"id":13},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["c"]},{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"insert","lines":["o"]},{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"insert","lines":["u"]},{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"insert","lines":["n"]},{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"insert","lines":["t"]}],[{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"insert","lines":["."],"id":14},{"start":{"row":2,"column":38},"end":{"row":2,"column":39},"action":"insert","lines":["i"]},{"start":{"row":2,"column":39},"end":{"row":2,"column":40},"action":"insert","lines":["n"]},{"start":{"row":2,"column":40},"end":{"row":2,"column":41},"action":"insert","lines":["d"]},{"start":{"row":2,"column":41},"end":{"row":2,"column":42},"action":"insert","lines":["e"]},{"start":{"row":2,"column":42},"end":{"row":2,"column":43},"action":"insert","lines":["x"]}],[{"start":{"row":2,"column":43},"end":{"row":2,"column":44},"action":"insert","lines":["}"],"id":15}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":16,"column":1},"end":{"row":16,"column":1},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":3,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1679758800493,"hash":"91b8a1f5c151e8e1617a04b405cd7a639fb03900"}
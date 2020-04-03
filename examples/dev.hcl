"default" = {
  "env" = {
    "tmp" = "/tmp"
  }

  "initialize" = false

  "password-file" = "key"

  "repository" = "/Volumes/RAMDisk"
}

"documents" = {
  "backup" = {
    "source" = "~/Documents"
  }

  "initialize" = false

  "repository" = "~/backup"

  "snapshots" = {
    "tag" = ["documents"]
  }
}

"global" = {
  "default-command" = "version"

  "initialize" = false

  "priority" = "low"
}

"groups" = {
  "full-backup" = ["root", "src"]
}

"root" = {
  "backup" = {
    "exclude-caches" = true

    "exclude-file" = ["root-excludes", "excludes"]

    "one-file-system" = false

    "source" = ["."]

    "tag" = ["test", "dev"]
  }

  "inherit" = "default"

  "initialize" = true

  "retention" = {
    "after-backup" = true

    "before-backup" = false

    "compact" = false

    "host" = true

    "keep-daily" = 1

    "keep-hourly" = 1

    "keep-last" = 3

    "keep-monthly" = 1

    "keep-tag" = ["forever"]

    "keep-weekly" = 1

    "keep-within" = "3h"

    "keep-yearly" = 1

    "prune" = false

    "tag" = ["test", "dev"]
  }
}

"self" = {
  "backup" = {
    "source" = "./"
  }

  "initialize" = false

  "repository" = "../backup"

  "snapshots" = {
    "tag" = ["self"]
  }
}

"src" = {
  "backup" = {
    "check-before" = true

    "exclude" = ["/**/.git"]

    "exclude-caches" = true

    "one-file-system" = false

    "run-after" = "echo All Done!"

    "run-before" = ["echo Starting!", "ls -al ~/go"]

    "source" = ["~/go"]

    "tag" = ["test", "dev"]
  }

  "inherit" = "default"

  "initialize" = true

  "retention" = {
    "after-backup" = true

    "before-backup" = false

    "compact" = false

    "keep-within" = "30d"

    "prune" = true
  }

  "snapshots" = {
    "tag" = ["test", "dev"]
  }
}

"stdin" = {
  "backup" = {
    "stdin" = true

    "stdin-filename" = "stdin-test"

    "tag" = ["stdin"]
  }

  "inherit" = "default"

  "snapshots" = {
    "tag" = ["stdin"]
  }
}
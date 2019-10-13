(import yaml)
(import bottlehy.utils.hyrize)

(setv version (bottlehy.utils.hyrize.hyrizing-dict
                (with [f (open "./resources/metadata/version.yml")]
                  (yaml.load (.read f) :Loader yaml.FullLoader))))

(setv +VERSION+ (.format "{}.{}.{}"
                         (:major version)
                         (:minor version)
                         (:patch version)))

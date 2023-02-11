#!/usr/bin/python
"""for docstring"""

from configbase import ConfigBase

config ChipConfigBase(ConfigBase):
    self.sim_make.args.append("sim_make.args__chip__config__base")
    self.sim_build.args.append("-top soc_top_tb")
    self.sim_defines.args.append("sim_defines.args__chip__config__base")
    self.sim_link.args.append("sim_defines.args__chip__config__base")
endconfig

config ChipSecurityConfig(ChipConfigBase):
endconfig

#!/usr/bin/python
"""for docstring"""

from config   import ChipConfigBase
from config   import ChipSecurityConfig
from testbase import TestBase


test ChipSecurityBase(TestBase):
    self.conf = ChipConfigBase
    #self.vcs_run.args.append("ChipSecurityBase.vcs_run.args")
    #self.skip_check_items.append("UVM_ERROR :    0")
    #self.skip_check_items.append("UVM_FATAL :    0")
    self.when.append("security")
endtest

test ChipSecuritySanity(ChipSecurityBase):
    self.conf = ChipSecurityConfig
    #self.vcs_run.args.append("ChipSecuritySanity.vcs_run.args")
    #self.when.append("security")
endtest

test ChipSecurityRSA(ChipSecurityBase):
    self.conf = ChipSecurityConfig
    #self.vcs_run.args.append("ChipSecurityRSA.vcs_run.args")
    #self.when.append("security")
endtest


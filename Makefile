#

#	 make FLAGS=-DCOLOR

%.pdf: %.dot
	m4 -DCOLOR $< | dot -Tpdf -Gsize=11.69,8.27 -Gratio="expand" -o $@

all: CTreeDP.pdf CTreeCSE.pdf CTreeCIS.pdf CTreeCAI.pdf CTreeVC.pdf
#all: CTreeSE.pdf CTreeCS.pdf CTreeIS.pdf CTreeAI.pdf CTreeSC.pdf\
#	CTreeVC.pdf CTreeCW.pdf CTreeFI.pdf CTreeFrame.pdf\
#	CTreeMJHEP.pdf CTreeDP.pdf CTreeDS.pdf

common = CTreeCommon.dot CTreeColor.dot CTreeEnglish.dot CTreeScience.dot\
	CTreeLIberalArts.dot CTreeInternational.dot\
	CTreeGrade.dot

CTreeFrame.pdf: CTreeFrame.dot $(common)

CTreeCSE.pdf: CTreeCSE.dot $(common)

CTreeCIS.pdf: CTreeCIS.dot $(common)

#CTreeCS.pdf: CTreeCS.dot $(common)

CTreeCAI.pdf: CTreeCAI.dot $(common)

CTreeSC.pdf: CTreeSC.dot $(common)

CTreeVC.pdf: CTreeVC.dot $(common)

CTreeCW.pdf: CTreeCW.dot $(common)

CTreeDS.pdf: CTreeDS.dot $(common)

CTreeFI.pdf: CTreeFI.dot $(common)  CTreeForeign.dot

CTreeMJHEP.pdf: CTreeMJHEP.dot $(common)

CTreeDP.pdf: CTreeDP.dot $(common)

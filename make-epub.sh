#!/bin/bash

MYEPUB="Stacidomo - Clifford D. Simak.epub"
MYEDIR="Stacidomo"

#zip -0 -X "${MYEPUB}" ${MYEDIR}/mimetype
#zip -9 -X -r -u "${MYEPUB}" ${MYEDIR}

cd ${MYEDIR}
mv mimetype !mimetype
7z a -t* ../"${MYEPUB}" !mimetype
7z u -tzip ../"${MYEPUB}" *
7z rn ../"${MYEPUB}" !mimetype mimetype
mv !mimetype mimetype

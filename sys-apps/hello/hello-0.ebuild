# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit git toolchain-funcs

DESCRIPTION="Hello app for testing purpose"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="mips"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

EGIT_REPO_URI="hello-test-to-remove.git"
: ${EGIT_BRANCH:="master"}
: ${EGIT_REVISION:=""}

src_compile() {
	emake CC=$(tc-getCC) || die "make failed"
}

src_install() {
	dobin ${S}/hello || die "dobin failed"
}

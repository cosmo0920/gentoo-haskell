# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal autotools

DESCRIPTION="Low-level networking interface"
HOMEPAGE="http://github.com/haskell/network"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE="test"

RDEPEND=">=dev-haskell/parsec-2.0[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( dev-haskell/hunit[profile?]
			dev-haskell/test-framework[profile?]
			dev-haskell/test-framework-hunit[profile?]
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	epatch "${FILESDIR}/network-2.2.0.0-eat-configure-opts.patch"
	eautoreconf
}

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}

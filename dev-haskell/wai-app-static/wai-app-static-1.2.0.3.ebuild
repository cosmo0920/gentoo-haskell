# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="WAI application for static serving"
HOMEPAGE="http://www.yesodweb.com/book/wai"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/base64-bytestring-0.1*[profile?]
		>=dev-haskell/blaze-builder-0.2.1.4[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		=dev-haskell/blaze-html-0.5*[profile?]
		=dev-haskell/cryptohash-0.7*[profile?]
		>=dev-haskell/file-embed-0.0.3.1[profile?]
		<dev-haskell/file-embed-0.1[profile?]
		dev-haskell/http-date[profile?]
		=dev-haskell/http-types-0.6*[profile?]
		>=dev-haskell/text-0.7[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-haskell/unix-compat-0.2[profile?]
		=dev-haskell/wai-1.2*[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/hspec-0.8
			<dev-haskell/hspec-1.2
			dev-haskell/hunit
			dev-haskell/network
			dev-haskell/wai-test
		)
		>=dev-haskell/cabal-1.8"
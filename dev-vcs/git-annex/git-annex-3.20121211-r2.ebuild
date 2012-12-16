# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin" # test-suite" broken
inherit haskell-cabal

DESCRIPTION="manage files with git, without checking their contents into git"
HOMEPAGE="http://git-annex.branchable.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="assistant dbus doc dns inotify pairing s3 test webapp webdav xmpp"
RESTRICT=test # don't seem to like our git environment much, does not ship all files

RDEPEND=">=dev-vcs/git-1.7.7" # TODO: add more deps?
DEPEND="${RDEPEND}
		test? ( dev-haskell/hunit
			dev-haskell/testpack
		)
		dev-haskell/bloomfilter
		>=dev-haskell/cabal-1.8
		dev-haskell/dataenc
		dev-haskell/edit-distance
		dev-haskell/extensible-exceptions
		dev-haskell/hslogger
		dev-haskell/http
		dev-haskell/ifelse
		dev-haskell/json[generic]
		dev-haskell/lifted-base
		dev-haskell/missingh
		dev-haskell/monad-control
		>=dev-haskell/mtl-2.1.1
		>=dev-haskell/network-2.0
		dev-haskell/pcre-light
		>=dev-haskell/quickcheck-2.1
		dev-haskell/safesemaphore
		dev-haskell/sha
		dev-haskell/text
		dev-haskell/transformers-base
		dev-haskell/utf8-string
		>=dev-lang/ghc-7.4.1

		assistant? ( >=dev-haskell/stm-2.3 )
		dbus? ( >=dev-haskell/dbus-0.10.3 )
		inotify? ( dev-haskell/hinotify )
		s3? ( dev-haskell/hs3 )
		webapp? (
			assistant? (
				dev-haskell/aeson
				dev-haskell/blaze-builder
				dev-haskell/case-insensitive
				dev-haskell/clientsession
				dev-haskell/crypto-api
				dev-haskell/data-default
				dev-haskell/hamlet
				dev-haskell/http-types
				dev-haskell/transformers
				dev-haskell/wai
				dev-haskell/wai-logger
				dev-haskell/warp
				dev-haskell/yesod
				>=dev-haskell/yesod-default-1.1.0
				dev-haskell/yesod-form
				dev-haskell/yesod-static
			)
			pairing? (
				dev-haskell/network-info
				dev-haskell/network-multicast
			)
		)
		webdav? (
			>=dev-haskell/dav-0.2
			dev-haskell/http-conduit
			dev-haskell/http-types
			dev-haskell/xml-conduit
		)
		xmpp? (
			assistant? (
				>=dev-haskell/gnutls-0.1.4
				dev-haskell/network-protocol-xmpp
				dev-haskell/xml-types
				dns? ( dev-haskell/dns )
			)
		)

		dev-lang/perl
		doc? ( www-apps/ikiwiki net-misc/rsync )"
# dev-lang/perl is to build the manpages
# www-apps/ikiwiki and net-misc/rsync used to build the rest of the docs

src_prepare() {
	#epatch "${FILESDIR}"/${P}-no-tf.patch
	echo 'mans: $(mans)' >>"${S}"/Makefile

	# there is no kqueue on linux, but should be on freebsd and solaris(?)
	cabal_chdeps \
		'testpack' 'testpack, SafeSemaphore' \
		'if (! os(windows) && ! os(solaris))' 'if (! os(windows) && ! os(linux))'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag assistant Assistant) \
		$(cabal_flag dbus Dbus) \
		$(cabal_flag dns DNS) \
		$(cabal_flag inotify Inotify) \
		$(cabal_flag pairing Pairing) \
		$(cabal_flag s3 S3) \
		$(cabal_flag webapp Webapp) \
		$(cabal_flag webdav WebDAV) \
		$(cabal_flag xmpp XMPP)
}

src_compile() {
	haskell-cabal_src_compile
	use doc && emake docs
	emake mans
}

src_test() {
	export GIT_CONFIG=${T}/temp-git-config
	git config user.email "git@src_test"
	git config user.name "Mr. ${P} The Test"

	emake test
}

src_install() {
	haskell-cabal_src_install
	dosym git-annex /usr/bin/git-annex-shell # standard make install does more, than needed

	emake install-mans DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	use doc && emake install-docs DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	mv "${ED}"/usr/share/doc/{${PN},${PF}}
	dodoc CHANGELOG README
}
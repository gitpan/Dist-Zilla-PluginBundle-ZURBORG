use strict;
use warnings;
package Dist::Zilla::PluginBundle::ZURBORG;
# ABSTRACT: dzil plugin bundle of ZURBORG

use Moose;

our $VERSION = '0.002'; # VERSION

with 'Dist::Zilla::Role::PluginBundle::Easy';


sub configure {
	my $self = shift;

	$self->add_plugins(
		['GatherDir' => {
		}],
		['PruneCruft' => {
		}],
		['PruneFiles' => {
			filename => 'README.md',
		}],
		['TravisYML' => {
		}],
		['MinimumPerl' => {
		}],
		['AutoPrereqs' => {
		}],
		['PreviousVersion::Changelog' => {
		}],
		['NextVersion::Semantic' => {
			format => '%d.%03d',
		}],
		['PodWeaver' => {
			config_plugin => '@ZURBORG',
		}],
		['OurPkgVersion' => {
		}],
		['NextRelease' => {
			format => '%v %{yyyy-MM-dd}d'
		}],
		['GithubMeta' => {
			issues => '1',
		}],
		['Git::Check' => {
		}],
		['Git::Commit' => {
		}],
		['Git::Tag' => {
		}],
		['Git::Contributors' => {
		}],
		['ContributorsFile' => {
		}],
		['ManifestSkip' => {
		}],
		['MetaYAML' => {
		}],
		['License' => {
		}],
		['Readme' => {
		}],
		['ExtraTests' => {
		}],
		['PodSyntaxTests' => {
		}],
		['PodCoverageTests' => {
		}],
		['Test::CPAN::Changes' => {
		}],
		['Test::Perl::Critic' => {
		}],
		['Test::Kwalitee::Extra' => {
		}],
		['ExecDir' => {
		}],
		['ShareDir' => {
		}],
		['Signature' => {
		}],
		['MakeMaker' => {
		}],
		['Manifest' => {
		}],
		['TestRelease' => {
		}],
		['ConfirmRelease' => {
		}],
		['UploadToCPAN' => {
		}],
    );

    return;
}

1;

__END__

=pod

=head1 NAME

Dist::Zilla::PluginBundle::ZURBORG - dzil plugin bundle of ZURBORG

=head1 VERSION

version 0.002

=head1 METHODS

=head2 configure

Configuration of Dist::Zilla::PluginBundle::Easy

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/zurborg/libdist-zilla-pluginbundle-zurborg-perl/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

David Zurborg <zurborg@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2014 by David Zurborg <zurborg@cpan.org>.

This is free software, licensed under:

  The ISC License

=cut

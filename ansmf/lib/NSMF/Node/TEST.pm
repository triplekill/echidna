package NSMF::Node::TEST;

use strict;
use v5.10;

# NSMF::Node Subclass
use base qw(NSMF::Node);

# NSMF Imports
use NSMF;
use NSMF::Util;

# POE Imports
use POE;

# Misc
use Data::Dumper;
use MIME::Base64;
use Compress::Zlib;
our $VERSION = '0.1';

# These are POE elements that help us interact with the POE Kernel and Heap storage
#my ($kernel, $heap);


# Here is your main()
sub run {
    my ($self, $kernel, $heap) = @_;

    # This provides the necessary data to the Node module for use of the put method
    $self->register($kernel, $heap);

    # At this point the Node is already authenticated so we can begin our work
    print_status("Running test processing..");

    # PUT is our send method, reuses the $heap->{server}->put that we provided to the super class with the $self->register method
    #$self->put('POST ' .time(). ' NSMF/1.0' . "\nMYDATA");

 
    say "    -> Sending Custom PING";
    $self->ping();
#    my $payload = encode_base64( compress( "Z"x100000 ) );
#    $self->post(pcap => $payload)
#    open my $file2, '>', '/tmp/test.pdf' or die 'Cant open file';
#    print $file2 uncompress(decode_base64 $payload);


#    print_status "Sending a POST";
#    my $payload = encode_base64( compress( "Z"x100000 ) );
    #$self->put(
    #    'POST '.
    #    'PCAP '. 
    #    '123434 '.
    #    'NSMF/1.0'. 
    #    "\r\n". 
    #    $payload
    #);

}

1;

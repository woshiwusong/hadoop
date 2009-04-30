#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
require 5.6.0;
use strict;
use warnings;
use Thrift;

package Hadoop::API::DatanodeReportType;
use constant ALL_DATANODES => 1;
use constant LIVE_DATANODES => 2;
use constant DEAD_DATANODES => 3;
package Hadoop::API::DatanodeState;
use constant NORMAL_STATE => 1;
use constant DECOMMISSION_INPROGRESS => 2;
use constant DECOMMISSIONED => 3;
package Hadoop::API::DatanodeInfo;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::DatanodeInfo->mk_accessors( qw( name storageID host thriftPort capacity dfsUsed remaining xceiverCount state ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{name} = undef;
$self->{storageID} = undef;
$self->{host} = undef;
$self->{thriftPort} = undef;
$self->{capacity} = undef;
$self->{dfsUsed} = undef;
$self->{remaining} = undef;
$self->{xceiverCount} = undef;
$self->{state} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{name}) {
      $self->{name} = $vals->{name};
    }
    if (defined $vals->{storageID}) {
      $self->{storageID} = $vals->{storageID};
    }
    if (defined $vals->{host}) {
      $self->{host} = $vals->{host};
    }
    if (defined $vals->{thriftPort}) {
      $self->{thriftPort} = $vals->{thriftPort};
    }
    if (defined $vals->{capacity}) {
      $self->{capacity} = $vals->{capacity};
    }
    if (defined $vals->{dfsUsed}) {
      $self->{dfsUsed} = $vals->{dfsUsed};
    }
    if (defined $vals->{remaining}) {
      $self->{remaining} = $vals->{remaining};
    }
    if (defined $vals->{xceiverCount}) {
      $self->{xceiverCount} = $vals->{xceiverCount};
    }
    if (defined $vals->{state}) {
      $self->{state} = $vals->{state};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'DatanodeInfo';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{name});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{storageID});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{host});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{thriftPort});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{capacity});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{dfsUsed});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{remaining});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^8$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{xceiverCount});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^9$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{state});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('DatanodeInfo');
  if (defined $self->{name}) {
    $xfer += $output->writeFieldBegin('name', TType::STRING, 1);
    $xfer += $output->writeString($self->{name});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{storageID}) {
    $xfer += $output->writeFieldBegin('storageID', TType::STRING, 2);
    $xfer += $output->writeString($self->{storageID});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{host}) {
    $xfer += $output->writeFieldBegin('host', TType::STRING, 3);
    $xfer += $output->writeString($self->{host});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{thriftPort}) {
    $xfer += $output->writeFieldBegin('thriftPort', TType::I32, 4);
    $xfer += $output->writeI32($self->{thriftPort});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{capacity}) {
    $xfer += $output->writeFieldBegin('capacity', TType::I64, 5);
    $xfer += $output->writeI64($self->{capacity});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{dfsUsed}) {
    $xfer += $output->writeFieldBegin('dfsUsed', TType::I64, 6);
    $xfer += $output->writeI64($self->{dfsUsed});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{remaining}) {
    $xfer += $output->writeFieldBegin('remaining', TType::I64, 7);
    $xfer += $output->writeI64($self->{remaining});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{xceiverCount}) {
    $xfer += $output->writeFieldBegin('xceiverCount', TType::I32, 8);
    $xfer += $output->writeI32($self->{xceiverCount});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{state}) {
    $xfer += $output->writeFieldBegin('state', TType::I32, 9);
    $xfer += $output->writeI32($self->{state});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::Block;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::Block->mk_accessors( qw( blockId path numBytes genStamp startOffset nodes ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{blockId} = undef;
$self->{path} = undef;
$self->{numBytes} = undef;
$self->{genStamp} = undef;
$self->{startOffset} = undef;
$self->{nodes} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{blockId}) {
      $self->{blockId} = $vals->{blockId};
    }
    if (defined $vals->{path}) {
      $self->{path} = $vals->{path};
    }
    if (defined $vals->{numBytes}) {
      $self->{numBytes} = $vals->{numBytes};
    }
    if (defined $vals->{genStamp}) {
      $self->{genStamp} = $vals->{genStamp};
    }
    if (defined $vals->{startOffset}) {
      $self->{startOffset} = $vals->{startOffset};
    }
    if (defined $vals->{nodes}) {
      $self->{nodes} = $vals->{nodes};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'Block';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{blockId});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{path});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{numBytes});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{genStamp});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{startOffset});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::LIST) {
        {
          my $_size0 = 0;
          $self->{nodes} = [];
          my $_etype3 = 0;
          $xfer += $input->readListBegin(\$_etype3, \$_size0);
          for (my $_i4 = 0; $_i4 < $_size0; ++$_i4)
          {
            my $elem5 = undef;
            $elem5 = new Hadoop::API::DatanodeInfo();
            $xfer += $elem5->read($input);
            push(@{$self->{nodes}},$elem5);
          }
          $xfer += $input->readListEnd();
        }
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('Block');
  if (defined $self->{blockId}) {
    $xfer += $output->writeFieldBegin('blockId', TType::I64, 1);
    $xfer += $output->writeI64($self->{blockId});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{path}) {
    $xfer += $output->writeFieldBegin('path', TType::STRING, 2);
    $xfer += $output->writeString($self->{path});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{numBytes}) {
    $xfer += $output->writeFieldBegin('numBytes', TType::I64, 3);
    $xfer += $output->writeI64($self->{numBytes});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{genStamp}) {
    $xfer += $output->writeFieldBegin('genStamp', TType::I64, 4);
    $xfer += $output->writeI64($self->{genStamp});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{nodes}) {
    $xfer += $output->writeFieldBegin('nodes', TType::LIST, 5);
    {
      $output->writeListBegin(TType::STRUCT, scalar(@{$self->{nodes}}));
      {
        foreach my $iter6 (@{$self->{nodes}}) 
        {
          $xfer += ${iter6}->write($output);
        }
      }
      $output->writeListEnd();
    }
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{startOffset}) {
    $xfer += $output->writeFieldBegin('startOffset', TType::I64, 6);
    $xfer += $output->writeI64($self->{startOffset});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::Stat;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::Stat->mk_accessors( qw( path isDir atime mtime perms owner group fileCount directoryCount quota spaceConsumed spaceQuota length blockSize replication ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{path} = undef;
$self->{isDir} = undef;
$self->{atime} = undef;
$self->{mtime} = undef;
$self->{perms} = undef;
$self->{owner} = undef;
$self->{group} = undef;
$self->{fileCount} = undef;
$self->{directoryCount} = undef;
$self->{quota} = undef;
$self->{spaceConsumed} = undef;
$self->{spaceQuota} = undef;
$self->{length} = undef;
$self->{blockSize} = undef;
$self->{replication} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{path}) {
      $self->{path} = $vals->{path};
    }
    if (defined $vals->{isDir}) {
      $self->{isDir} = $vals->{isDir};
    }
    if (defined $vals->{atime}) {
      $self->{atime} = $vals->{atime};
    }
    if (defined $vals->{mtime}) {
      $self->{mtime} = $vals->{mtime};
    }
    if (defined $vals->{perms}) {
      $self->{perms} = $vals->{perms};
    }
    if (defined $vals->{owner}) {
      $self->{owner} = $vals->{owner};
    }
    if (defined $vals->{group}) {
      $self->{group} = $vals->{group};
    }
    if (defined $vals->{fileCount}) {
      $self->{fileCount} = $vals->{fileCount};
    }
    if (defined $vals->{directoryCount}) {
      $self->{directoryCount} = $vals->{directoryCount};
    }
    if (defined $vals->{quota}) {
      $self->{quota} = $vals->{quota};
    }
    if (defined $vals->{spaceConsumed}) {
      $self->{spaceConsumed} = $vals->{spaceConsumed};
    }
    if (defined $vals->{spaceQuota}) {
      $self->{spaceQuota} = $vals->{spaceQuota};
    }
    if (defined $vals->{length}) {
      $self->{length} = $vals->{length};
    }
    if (defined $vals->{blockSize}) {
      $self->{blockSize} = $vals->{blockSize};
    }
    if (defined $vals->{replication}) {
      $self->{replication} = $vals->{replication};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'Stat';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{path});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::BOOL) {
        $xfer += $input->readBool(\$self->{isDir});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{atime});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{mtime});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::I16) {
        $xfer += $input->readI16(\$self->{perms});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{owner});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{group});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^8$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{fileCount});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^9$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{directoryCount});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^10$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{quota});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^11$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{spaceConsumed});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^12$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{spaceQuota});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^13$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{length});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^14$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{blockSize});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^15$/ && do{      if ($ftype == TType::I16) {
        $xfer += $input->readI16(\$self->{replication});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('Stat');
  if (defined $self->{path}) {
    $xfer += $output->writeFieldBegin('path', TType::STRING, 1);
    $xfer += $output->writeString($self->{path});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{isDir}) {
    $xfer += $output->writeFieldBegin('isDir', TType::BOOL, 2);
    $xfer += $output->writeBool($self->{isDir});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{atime}) {
    $xfer += $output->writeFieldBegin('atime', TType::I64, 3);
    $xfer += $output->writeI64($self->{atime});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{mtime}) {
    $xfer += $output->writeFieldBegin('mtime', TType::I64, 4);
    $xfer += $output->writeI64($self->{mtime});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{perms}) {
    $xfer += $output->writeFieldBegin('perms', TType::I16, 5);
    $xfer += $output->writeI16($self->{perms});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{owner}) {
    $xfer += $output->writeFieldBegin('owner', TType::STRING, 6);
    $xfer += $output->writeString($self->{owner});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{group}) {
    $xfer += $output->writeFieldBegin('group', TType::STRING, 7);
    $xfer += $output->writeString($self->{group});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{fileCount}) {
    $xfer += $output->writeFieldBegin('fileCount', TType::I64, 8);
    $xfer += $output->writeI64($self->{fileCount});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{directoryCount}) {
    $xfer += $output->writeFieldBegin('directoryCount', TType::I64, 9);
    $xfer += $output->writeI64($self->{directoryCount});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{quota}) {
    $xfer += $output->writeFieldBegin('quota', TType::I64, 10);
    $xfer += $output->writeI64($self->{quota});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{spaceConsumed}) {
    $xfer += $output->writeFieldBegin('spaceConsumed', TType::I64, 11);
    $xfer += $output->writeI64($self->{spaceConsumed});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{spaceQuota}) {
    $xfer += $output->writeFieldBegin('spaceQuota', TType::I64, 12);
    $xfer += $output->writeI64($self->{spaceQuota});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{length}) {
    $xfer += $output->writeFieldBegin('length', TType::I64, 13);
    $xfer += $output->writeI64($self->{length});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{blockSize}) {
    $xfer += $output->writeFieldBegin('blockSize', TType::I64, 14);
    $xfer += $output->writeI64($self->{blockSize});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{replication}) {
    $xfer += $output->writeFieldBegin('replication', TType::I16, 15);
    $xfer += $output->writeI16($self->{replication});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::IOException;
use base('Thrift::TException');
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::IOException->mk_accessors( qw( msg stack clazz ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{msg} = undef;
$self->{stack} = undef;
$self->{clazz} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{msg}) {
      $self->{msg} = $vals->{msg};
    }
    if (defined $vals->{stack}) {
      $self->{stack} = $vals->{stack};
    }
    if (defined $vals->{clazz}) {
      $self->{clazz} = $vals->{clazz};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'IOException';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{msg});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{stack});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{clazz});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('IOException');
  if (defined $self->{msg}) {
    $xfer += $output->writeFieldBegin('msg', TType::STRING, 1);
    $xfer += $output->writeString($self->{msg});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{stack}) {
    $xfer += $output->writeFieldBegin('stack', TType::STRING, 2);
    $xfer += $output->writeString($self->{stack});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{clazz}) {
    $xfer += $output->writeFieldBegin('clazz', TType::STRING, 3);
    $xfer += $output->writeString($self->{clazz});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::QuotaException;
use base('Thrift::TException');
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::QuotaException->mk_accessors( qw( msg stack ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{msg} = undef;
$self->{stack} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{msg}) {
      $self->{msg} = $vals->{msg};
    }
    if (defined $vals->{stack}) {
      $self->{stack} = $vals->{stack};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'QuotaException';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{msg});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{stack});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('QuotaException');
  if (defined $self->{msg}) {
    $xfer += $output->writeFieldBegin('msg', TType::STRING, 1);
    $xfer += $output->writeString($self->{msg});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{stack}) {
    $xfer += $output->writeFieldBegin('stack', TType::STRING, 2);
    $xfer += $output->writeString($self->{stack});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::BlockData;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::BlockData->mk_accessors( qw( crc length data ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{crc} = undef;
$self->{length} = undef;
$self->{data} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{crc}) {
      $self->{crc} = $vals->{crc};
    }
    if (defined $vals->{length}) {
      $self->{length} = $vals->{length};
    }
    if (defined $vals->{data}) {
      $self->{data} = $vals->{data};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'BlockData';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{crc});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{length});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{data});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('BlockData');
  if (defined $self->{crc}) {
    $xfer += $output->writeFieldBegin('crc', TType::I32, 1);
    $xfer += $output->writeI32($self->{crc});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{length}) {
    $xfer += $output->writeFieldBegin('length', TType::I32, 2);
    $xfer += $output->writeI32($self->{length});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{data}) {
    $xfer += $output->writeFieldBegin('data', TType::STRING, 3);
    $xfer += $output->writeString($self->{data});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

1;

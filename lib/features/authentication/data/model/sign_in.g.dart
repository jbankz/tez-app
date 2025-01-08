// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignInAdapter extends TypeAdapter<SignIn> {
  @override
  final int typeId = 5;

  @override
  SignIn read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SignIn(
      accessToken: fields[0] as String,
      refreshToken: fields[1] as String,
      id: fields[2] as int,
      username: fields[3] as String,
      firstName: fields[4] as String,
      lastName: fields[5] as String,
      gender: fields[6] as Gender,
      image: fields[7] as String,
      email: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SignIn obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.firstName)
      ..writeByte(5)
      ..write(obj.lastName)
      ..writeByte(6)
      ..write(obj.gender)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignInAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInImpl _$$SignInImplFromJson(Map<String, dynamic> json) => _$SignInImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      image: json['image'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$SignInImplToJson(_$SignInImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender]!,
      'image': instance.image,
      'email': instance.email,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

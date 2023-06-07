import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TradesRecord extends FirestoreRecord {
  TradesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "requester_uid" field.
  DocumentReference? _requesterUid;
  DocumentReference? get requesterUid => _requesterUid;
  bool hasRequesterUid() => _requesterUid != null;

  // "owner_uid" field.
  DocumentReference? _ownerUid;
  DocumentReference? get ownerUid => _ownerUid;
  bool hasOwnerUid() => _ownerUid != null;

  // "requester_book_uid" field.
  DocumentReference? _requesterBookUid;
  DocumentReference? get requesterBookUid => _requesterBookUid;
  bool hasRequesterBookUid() => _requesterBookUid != null;

  // "offered_book_uid" field.
  DocumentReference? _offeredBookUid;
  DocumentReference? get offeredBookUid => _offeredBookUid;
  bool hasOfferedBookUid() => _offeredBookUid != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _requesterUid = snapshotData['requester_uid'] as DocumentReference?;
    _ownerUid = snapshotData['owner_uid'] as DocumentReference?;
    _requesterBookUid =
        snapshotData['requester_book_uid'] as DocumentReference?;
    _offeredBookUid = snapshotData['offered_book_uid'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trades');

  static Stream<TradesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TradesRecord.fromSnapshot(s));

  static Future<TradesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TradesRecord.fromSnapshot(s));

  static TradesRecord fromSnapshot(DocumentSnapshot snapshot) => TradesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TradesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TradesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TradesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createTradesRecordData({
  DocumentReference? requesterUid,
  DocumentReference? ownerUid,
  DocumentReference? requesterBookUid,
  DocumentReference? offeredBookUid,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'requester_uid': requesterUid,
      'owner_uid': ownerUid,
      'requester_book_uid': requesterBookUid,
      'offered_book_uid': offeredBookUid,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}
